(function () {
    const CATEGORIES = [
        ['pistols', 'Pistols'],
        ['heavy_pistols', 'Heavy Pistols'],
        ['smgs', 'SMGs'],
        ['shotguns', 'Shotguns'],
        ['rifles', 'Rifles'],
        ['assault_rifles', 'Assault Rifles'],
        ['snipers', 'Snipers'],
        ['melee', 'Melee'],
        ['custom', 'Custom'],
        ['variants', 'Variants'],
    ];

    const PREVIEW_WEAPONS = [
        { id: 'ws_weapon_glock21', label: 'Glock21', item: 'WEAPON_GLOCK21', category: 'pistols', ammo: '.44' },
        { id: 'ws_weapon_yellowreaper', label: 'Yellowreaper', item: 'WEAPON_YELLOWREAPER', category: 'pistols', ammo: '.44' },
        { id: 'ws_weapon_fn57', label: 'Fn57', item: 'WEAPON_FN57', category: 'heavy_pistols', ammo: '.44' },
        { id: 'ws_weapon_vipvector', label: 'Vipvector', item: 'WEAPON_VIPVECTOR', category: 'smgs', ammo: '9mm' },
        { id: 'ws_weapon_kyreemp5', label: 'Kyreemp5', item: 'WEAPON_KYREEMP5', category: 'smgs', ammo: '9mm' },
        { id: 'ws_weapon_kyreesg', label: 'Kyreesg', item: 'WEAPON_KYREESG', category: 'shotguns', ammo: '12 Gauge' },
        { id: 'ws_weapon_dezboomstick', label: 'Dezboomstick', item: 'WEAPON_DEZBOOMSTICK', category: 'shotguns', ammo: '.44' },
        { id: 'ws_weapon_lsm16', label: 'M16', item: 'WEAPON_LSM16', category: 'assault_rifles', ammo: 'Rifle' },
        { id: 'ws_weapon_lsr4c', label: 'R4c', item: 'WEAPON_LSR4C', category: 'assault_rifles', ammo: 'Rifle' },
        { id: 'ws_weapon_lsrevengemosin', label: 'Revengemosin', item: 'WEAPON_LSREVENGEMOSIN', category: 'snipers', ammo: 'Sniper' },
        { id: 'ws_weapon_kyreebat', label: 'Kyreebat', item: 'WEAPON_KYREEBAT', category: 'melee', ammo: 'Melee' },
        { id: 'ws_weapon_lsauradagger', label: 'Auradagger', item: 'WEAPON_LSAURADAGGER', category: 'melee', ammo: 'Melee' },
        { id: 'ws_weapon_lsstellarstriker', label: 'Stellarstriker', item: 'WEAPON_LSSTELLARSTRIKER', category: 'custom', ammo: 'Melee' },
        { id: 'ws_weapon_chuckyswitchv1bydaie', label: 'Chucky Glock', item: 'WEAPON_CHUCKYSWITCHV1BYDAIE', category: 'variants', ammo: '.44' },
        { id: 'ws_weapon_ghostfaceakv1bydaie', label: 'Ghostface AK v1', item: 'WEAPON_GHOSTFACEAKV1BYDAIE', category: 'variants', ammo: 'Rifle' },
        { id: 'ws_weapon_freddyakv1bydaie', label: 'Freddy AK', item: 'WEAPON_FREDDYAKV1BYDAIE', category: 'variants', ammo: 'Rifle' },
        { id: 'ws_weapon_wireframe_1911', label: 'Wireframe 1911', item: 'WEAPON_WIREFRAME_1911', category: 'variants', ammo: '.44' },
    ];

    const app = document.getElementById('app');
    const nav = document.getElementById('nav');
    const rowsEl = document.getElementById('rows');
    const scroller = document.getElementById('scroller');
    const search = document.getElementById('search');
    const playerEl = document.getElementById('player');
    const rolesEl = document.getElementById('roles');
    const countEl = document.getElementById('count');
    const toastEl = document.getElementById('toast');
    const closeBtn = document.getElementById('closeBtn');

    const params = new URLSearchParams(window.location.search);
    const preview = typeof GetParentResourceName !== 'function';
    const selftest = params.has('selftest');
    const pageSize = 36;

    const state = {
        weapons: [],
        categories: [],
        active: 'all',
        query: '',
        filtered: [],
        rendered: 0,
        selected: 0,
        busy: false,
        image: false,
    };

    window.__takes = [];

    function escapeHtml(value) {
        return String(value == null ? '' : value).replace(/[&<>"']/g, function (char) {
            return ({ '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;' })[char];
        });
    }

    function post(name, data) {
        if (preview) {
            if (name === 'close') hide();
            if (name === 'give') window.__takes.push(data && data.id);
            return Promise.resolve();
        }
        return fetch('https://' + GetParentResourceName() + '/' + name, {
            method: 'POST',
            headers: { 'Content-Type': 'application/json; charset=UTF-8' },
            body: JSON.stringify(data || {}),
        }).catch(function () {});
    }

    function previewPayload() {
        const counts = {};
        PREVIEW_WEAPONS.forEach(function (weapon) {
            counts[weapon.category] = (counts[weapon.category] || 0) + 1;
        });
        return {
            action: 'open',
            player: 'Preview',
            roles: ['No Vacancy VIP'],
            weapons: PREVIEW_WEAPONS,
            categories: CATEGORIES.filter(function (entry) { return counts[entry[0]]; }).map(function (entry) {
                return { id: entry[0], label: entry[1], count: counts[entry[0]] };
            }),
            image: false,
        };
    }

    function applyFilter() {
        const query = state.query.trim().toLowerCase();
        const active = state.active;
        const next = [];
        for (let i = 0; i < state.weapons.length; i += 1) {
            const weapon = state.weapons[i];
            if (active !== 'all' && weapon.category !== active) continue;
            if (query) {
                const haystack = (weapon.label + ' ' + weapon.item + ' ' + weapon.ammo).toLowerCase();
                if (haystack.indexOf(query) === -1) continue;
            }
            next.push(weapon);
        }
        state.filtered = next;
        state.rendered = 0;
        state.selected = 0;
        rowsEl.innerHTML = '';
        fill();
        updateCount();
    }

    function rowMarkup(weapon, index) {
        const letter = escapeHtml((weapon.label || '?').charAt(0).toUpperCase());
        let image = '';
        if (state.image) {
            const src = escapeHtml(String(state.image).replace('%s', weapon.item));
            image = '<img alt="" src="' + src + '" loading="lazy">';
        }
        return '<button type="button" class="row' + (index === state.selected ? ' selected' : '') + '" data-index="' + index + '">' +
            '<span class="thumb">' + image + '<span class="fallback">' + letter + '</span></span>' +
            '<span class="meta"><span class="name">' + escapeHtml(weapon.label) + '</span>' +
            '<span class="sub">' + escapeHtml(weapon.ammo || 'Melee') + '</span></span>' +
            '<span class="take">Take</span></button>';
    }

    function paintMore() {
        if (state.rendered >= state.filtered.length) return;
        const start = state.rendered;
        const end = Math.min(start + pageSize, state.filtered.length);
        let html = '';
        for (let i = start; i < end; i += 1) html += rowMarkup(state.filtered[i], i);
        rowsEl.insertAdjacentHTML('beforeend', html);
        state.rendered = end;
    }

    function fill() {
        if (state.filtered.length === 0) {
            rowsEl.innerHTML = '<div class="empty">No weapons in this category.</div>';
            state.rendered = 0;
            return;
        }
        let guard = 0;
        while (state.rendered < state.filtered.length && guard < 20) {
            paintMore();
            guard += 1;
            if (scroller.scrollHeight > scroller.clientHeight + 24 && state.rendered >= pageSize) break;
        }
    }

    function updateCount() {
        const total = state.weapons.length;
        const shown = state.filtered.length;
        countEl.textContent = shown === total ? (total + ' weapons') : (shown + ' / ' + total);
    }

    function updateSelection() {
        const nodes = rowsEl.querySelectorAll('.row');
        for (let i = 0; i < nodes.length; i += 1) {
            nodes[i].classList.toggle('selected', Number(nodes[i].dataset.index) === state.selected);
        }
        const selected = rowsEl.querySelector('.row.selected');
        if (selected && selected.scrollIntoView) selected.scrollIntoView({ block: 'nearest' });
    }

    function ensureRendered(index) {
        let guard = 0;
        while (state.rendered <= index && state.rendered < state.filtered.length && guard < 20) {
            paintMore();
            guard += 1;
        }
        updateSelection();
    }

    function move(delta) {
        if (!state.filtered.length) return;
        const next = state.selected + delta;
        if (next < 0 || next >= state.filtered.length) return;
        state.selected = next;
        ensureRendered(state.selected);
    }

    function renderNav() {
        const cats = [{ id: 'all', label: 'All', count: state.weapons.length }].concat(state.categories || []);
        nav.innerHTML = cats.map(function (category) {
            const active = category.id === state.active ? ' active' : '';
            return '<button type="button" data-cat="' + escapeHtml(category.id) + '" class="' + active.trim() + '">' +
                escapeHtml(category.label) + '<span>' + (category.count || 0) + '</span></button>';
        }).join('');
    }

    function giveSelected() {
        const weapon = state.filtered[state.selected];
        if (!weapon || state.busy) return;
        state.busy = true;
        const node = rowsEl.querySelector('[data-index="' + state.selected + '"]');
        if (node) node.classList.add('busy');
        post('give', { id: weapon.id });
        if (preview) {
            state.busy = false;
            if (node) node.classList.remove('busy');
            toast('Weapon added to your inventory.', true);
        }
    }

    let toastTimer = 0;
    function toast(message, ok) {
        toastEl.textContent = message || '';
        toastEl.classList.toggle('bad', ok === false);
        toastEl.classList.remove('hidden');
        window.clearTimeout(toastTimer);
        toastTimer = window.setTimeout(function () { toastEl.classList.add('hidden'); }, 2400);
    }

    function show(payload) {
        state.weapons = payload.weapons || [];
        state.categories = payload.categories || [];
        state.image = payload.image || false;
        state.query = '';
        state.active = 'all';
        state.busy = false;
        search.value = '';
        const roles = payload.roles || [];
        rolesEl.textContent = roles.length ? roles.join(' · ') : 'Role access';
        playerEl.textContent = payload.player || '';
        renderNav();
        applyFilter();
        app.classList.remove('hidden');
        if (!selftest) search.focus();
    }

    function hide() {
        app.classList.add('hidden');
        state.busy = false;
    }

    let searchTimer = 0;
    search.addEventListener('input', function () {
        const run = function () {
            state.query = search.value;
            applyFilter();
        };
        if (selftest) {
            run();
            return;
        }
        window.clearTimeout(searchTimer);
        searchTimer = window.setTimeout(run, 40);
    });

    nav.addEventListener('click', function (event) {
        const button = event.target.closest('button');
        if (!button) return;
        state.active = button.dataset.cat || 'all';
        renderNav();
        applyFilter();
    });

    rowsEl.addEventListener('click', function (event) {
        const row = event.target.closest('.row');
        if (!row) return;
        state.selected = Number(row.dataset.index);
        updateSelection();
        giveSelected();
    });

    rowsEl.addEventListener('error', function (event) {
        if (event.target && event.target.tagName === 'IMG') event.target.remove();
    }, true);

    scroller.addEventListener('scroll', function () {
        if (scroller.scrollTop + scroller.clientHeight >= scroller.scrollHeight - 48) paintMore();
    }, { passive: true });

    closeBtn.addEventListener('click', function () { post('close'); });

    document.addEventListener('keydown', function (event) {
        if (app.classList.contains('hidden')) return;
        if (event.key === 'Escape') {
            event.preventDefault();
            post('close');
            return;
        }
        const typing = event.target === search;
        if (event.key === 'ArrowDown') {
            event.preventDefault();
            if (typing) search.blur();
            move(1);
        } else if (event.key === 'ArrowUp') {
            event.preventDefault();
            move(-1);
        } else if (event.key === 'Enter') {
            event.preventDefault();
            giveSelected();
        }
    });

    window.addEventListener('message', function (event) {
        const data = event.data || {};
        if (data.action === 'open') show(data);
        else if (data.action === 'close') hide();
        else if (data.action === 'result') {
            state.busy = false;
            rowsEl.querySelectorAll('.row.busy').forEach(function (node) { node.classList.remove('busy'); });
            toast(data.message, data.ok !== false);
        }
    });

    function runSelfTest() {
        const report = [];
        function assert(name, condition) {
            report.push((condition ? 'ok ' : 'FAIL ') + name);
        }
        show(previewPayload());
        assert('visible', !app.classList.contains('hidden'));
        assert('brand', document.getElementById('title').textContent === 'Role Armory');
        assert('rows', rowsEl.querySelectorAll('.row').length >= 10);
        search.value = 'chucky';
        search.dispatchEvent(new Event('input'));
        assert('search', state.filtered.length === 1 && state.filtered[0].label === 'Chucky Glock');
        search.value = '';
        search.dispatchEvent(new Event('input'));
        nav.querySelector('[data-cat="melee"]').click();
        assert('melee', state.filtered.length > 0 && state.filtered.every(function (weapon) { return weapon.category === 'melee'; }));
        nav.querySelector('[data-cat="all"]').click();
        search.value = 'zzzz-none';
        search.dispatchEvent(new Event('input'));
        assert('empty', rowsEl.querySelector('.empty') !== null && state.filtered.length === 0);
        search.value = '';
        search.dispatchEvent(new Event('input'));
        document.dispatchEvent(new KeyboardEvent('keydown', { key: 'ArrowDown' }));
        assert('arrow', state.selected === 1);
        document.dispatchEvent(new KeyboardEvent('keydown', { key: 'Enter' }));
        assert('enter', window.__takes[0] === state.filtered[1].id);
        document.dispatchEvent(new KeyboardEvent('keydown', { key: 'Escape' }));
        assert('esc', app.classList.contains('hidden'));
        const failed = report.filter(function (line) { return line.indexOf('FAIL') === 0; });
        const status = document.getElementById('test-status');
        status.textContent = failed.length ? failed.join(' | ') : 'PASS';
        status.classList.remove('hidden');
        if (!failed.length) show(previewPayload());
    }

    if (preview) {
        document.body.classList.add('preview');
        if (selftest) {
            runSelfTest();
        } else {
            show(previewPayload());
            const shot = params.get('shot');
            if (shot === 'search') {
                search.value = 'ak';
                state.query = 'ak';
                applyFilter();
            } else if (shot === 'empty') {
                search.value = 'zzzz-none';
                state.query = 'zzzz-none';
                applyFilter();
            } else if (shot === 'melee') {
                state.active = 'melee';
                renderNav();
                applyFilter();
            }
        }
    }
})();
