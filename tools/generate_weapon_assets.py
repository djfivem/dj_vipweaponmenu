#!/usr/bin/env python3
"""Build QB inventory weapon definitions and 100x100 transparent icons.

Source is the ox_inventory weapons list in source/ox-weapons.lua.
Icons are drawn at 400px and resized to 100x100, the size qb-inventory uses.
"""

from __future__ import annotations

import colorsys
import math
import os
import random
import re
import sys
import zlib
from dataclasses import dataclass

import numpy as np
from PIL import Image, ImageChops, ImageDraw, ImageFilter

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), ".."))
SOURCE = os.path.join(ROOT, "source", "ox-weapons.lua")
OUT_IMAGES = os.path.join(ROOT, "qb-inventory", "html", "images")
OUT_QB = os.path.join(ROOT, "qb")
S = 400
U = 4  # logical 100px grid -> 400px canvas
ICON = 100

SKIP = {
    "WEAPON_AIRSTRIKE_ROCKET",
    "WEAPON_ANIMAL",
    "WEAPON_ANIMAL_RETRIEVER",
    "WEAPON_BARBED_WIRE",
    "WEAPON_BIRD_CRAP",
    "WEAPON_BLEEDING",
    "WEAPON_BOAR",
    "WEAPON_BRIEFCASE",
    "WEAPON_BRIEFCASE_02",
    "WEAPON_CAT",
    "WEAPON_COUGAR",
    "WEAPON_COW",
    "WEAPON_COYOTE",
    "WEAPON_DEER",
    "WEAPON_DROWNING",
    "WEAPON_DROWNING_IN_VEHICLE",
    "WEAPON_ELECTRIC_FENCE",
    "WEAPON_EXHAUSTION",
    "WEAPON_EXPLOSION",
    "WEAPON_FALL",
    "WEAPON_FIRE",
    "WEAPON_GRENADELAUNCHER_SMOKE",
    "WEAPON_HAMMERHEAD_SHARK",
    "WEAPON_HELI_CRASH",
    "WEAPON_HEN",
    "WEAPON_HIT_BY_WATER_CANNON",
    "WEAPON_KILLER_WHALE",
    "WEAPON_PASSENGER_ROCKET",
    "WEAPON_PIG",
    "WEAPON_RABBIT",
    "WEAPON_RAMMED_BY_CAR",
    "WEAPON_REMOTESNIPER",
    "WEAPON_RUN_OVER_BY_CAR",
    "WEAPON_SMALL_DOG",
    "WEAPON_STINGER",
    "WEAPON_TIGER_SHARK",
    "WEAPON_UNARMED",
    "WEAPON_UNHOLSTER_UNARMED",
    "WEAPON_VEHICLE_ROCKET",
}

# Default GTA weapons already shipped with qb-core. The register script
# adds these only when the server does not already define them.
STOCK = {
    "weapon_advancedrifle",
    "weapon_appistol",
    "weapon_assaultrifle",
    "weapon_assaultrifle_mk2",
    "weapon_assaultshotgun",
    "weapon_assaultsmg",
    "weapon_autoshotgun",
    "weapon_ball",
    "weapon_bat",
    "weapon_battleaxe",
    "weapon_battlerifle",
    "weapon_bottle",
    "weapon_bullpuprifle",
    "weapon_bullpuprifle_mk2",
    "weapon_bullpupshotgun",
    "weapon_bzgas",
    "weapon_candycane",
    "weapon_carbinerifle",
    "weapon_carbinerifle_mk2",
    "weapon_ceramicpistol",
    "weapon_combatmg",
    "weapon_combatmg_mk2",
    "weapon_combatpdw",
    "weapon_combatpistol",
    "weapon_combatshotgun",
    "weapon_compactlauncher",
    "weapon_compactrifle",
    "weapon_crowbar",
    "weapon_dagger",
    "weapon_dbshotgun",
    "weapon_digiscanner",
    "weapon_doubleaction",
    "weapon_emplauncher",
    "weapon_fertilizercan",
    "weapon_fireextinguisher",
    "weapon_firework",
    "weapon_flare",
    "weapon_flaregun",
    "weapon_flashlight",
    "weapon_gadgetpistol",
    "weapon_golfclub",
    "weapon_grenade",
    "weapon_grenadelauncher",
    "weapon_gusenberg",
    "weapon_hammer",
    "weapon_hatchet",
    "weapon_hazardcan",
    "weapon_heavypistol",
    "weapon_heavyrifle",
    "weapon_heavyshotgun",
    "weapon_heavysniper",
    "weapon_heavysniper_mk2",
    "weapon_hominglauncher",
    "weapon_knife",
    "weapon_knuckle",
    "weapon_machete",
    "weapon_machinepistol",
    "weapon_marksmanpistol",
    "weapon_marksmanrifle",
    "weapon_marksmanrifle_mk2",
    "weapon_metaldetector",
    "weapon_mg",
    "weapon_microsmg",
    "weapon_militaryrifle",
    "weapon_minigun",
    "weapon_minismg",
    "weapon_molotov",
    "weapon_musket",
    "weapon_navyrevolver",
    "weapon_nightstick",
    "weapon_petrolcan",
    "weapon_pipebomb",
    "weapon_pistol",
    "weapon_pistol50",
    "weapon_pistol_mk2",
    "weapon_pistolxm3",
    "weapon_poolcue",
    "weapon_precisionrifle",
    "weapon_proxmine",
    "weapon_pumpshotgun",
    "weapon_pumpshotgun_mk2",
    "weapon_railgun",
    "weapon_railgunxm3",
    "weapon_raycarbine",
    "weapon_rayminigun",
    "weapon_raypistol",
    "weapon_revolver",
    "weapon_revolver_mk2",
    "weapon_rpg",
    "weapon_sawnoffshotgun",
    "weapon_smg",
    "weapon_smg_mk2",
    "weapon_smokegrenade",
    "weapon_sniperrifle",
    "weapon_snowball",
    "weapon_snowlauncher",
    "weapon_snspistol",
    "weapon_snspistol_mk2",
    "weapon_specialcarbine",
    "weapon_specialcarbine_mk2",
    "weapon_stickybomb",
    "weapon_stone_hatchet",
    "weapon_stungun",
    "weapon_switchblade",
    "weapon_tacticalrifle",
    "weapon_teargas",
    "weapon_tecpistol",
    "weapon_vintagepistol",
    "weapon_wrench",
}

REASON = {
    "Pistol": "Pistoled / Blasted / Plugged / Bust a cap in",
    "Submachine Gun": "Riddled / Drilled / Finished / Submachine Gunned",
    "Shotgun": "Devastated / Pulverized / Shotgunned",
    "Assault Rifle": "Ended / Rifled / Shot down / Floored",
    "Light Machine Gun": "Machine gunned / Sprayed / Ruined",
    "Sniper Rifle": "Sniped / Picked off / Scoped",
    "Heavy Weapons": "Killed / Exploded / Obliterated / Destroyed",
    "Throwable": "Bombed / Exploded / Detonated / Blew up",
    "Melee": "Melee killed / Whacked / Executed / Beat down / Murdered / Battered",
    "Miscellaneous": "Died",
}

DESC = {
    "Pistol": "Pistol.",
    "Submachine Gun": "Submachine gun.",
    "Shotgun": "Shotgun.",
    "Assault Rifle": "Rifle.",
    "Light Machine Gun": "Machine gun.",
    "Sniper Rifle": "Sniper rifle.",
    "Heavy Weapons": "Heavy weapon.",
    "Throwable": "Throwable.",
    "Melee": "Melee weapon.",
    "Miscellaneous": "Utility weapon.",
}


@dataclass
class Pal:
    body: tuple
    body_dark: tuple
    accent: tuple
    accent2: tuple
    metal: str
    pattern: str | None
    theme: str


@dataclass
class Var:
    stripe: int
    muzzle: int
    optic: bool
    grip: int
    seed: int


def lighten(c, amt):
    return tuple(min(255, int(v + (255 - v) * amt)) for v in c)


def darken(c, amt):
    return tuple(max(0, int(v * (1 - amt))) for v in c)


def box(x1, y1, x2, y2):
    return (int(x1 * U), int(y1 * U), int(x2 * U), int(y2 * U))


def pts(*pairs):
    return [(int(x * U), int(y * U)) for x, y in pairs]


def hsv(h, s, v):
    r, g, b = colorsys.hsv_to_rgb((h % 360) / 360.0, s, v)
    return (int(r * 255), int(g * 255), int(b * 255))


def sample_stops(stops, t):
    if t <= 0:
        return stops[0]
    if t >= 1:
        return stops[-1]
    x = t * (len(stops) - 1)
    i = int(x)
    f = x - i
    a = stops[i]
    b = stops[min(i + 1, len(stops) - 1)]
    return tuple(int(a[k] + (b[k] - a[k]) * f) for k in range(3))


class Canvas:
    def __init__(self):
        self.im = Image.new("RGBA", (S, S), (0, 0, 0, 0))

    def _stops(self, color, metal):
        if metal == "gold":
            return [(255, 236, 180), (214, 168, 52), (122, 78, 16), (232, 190, 80), (92, 60, 14)]
        if metal == "chrome":
            return [(255, 255, 255), (198, 206, 214), (110, 118, 128), (236, 240, 244), (72, 78, 86)]
        if metal == "bronze":
            return [(230, 180, 120), (176, 112, 58), (110, 64, 28), (196, 130, 70)]
        if metal == "flat":
            return [lighten(color, 0.16), color, darken(color, 0.18)]
        return [lighten(color, 0.42), color, darken(color, 0.18), darken(color, 0.38)]

    def _paint(self, drawer, color, metal):
        mask = Image.new("L", (S, S), 0)
        drawer(ImageDraw.Draw(mask))
        bbox = mask.getbbox()
        if not bbox:
            return
        grad = Image.new("RGBA", (S, S), (0, 0, 0, 0))
        gd = ImageDraw.Draw(grad)
        stops = self._stops(color, metal)
        y0, y1 = bbox[1], max(bbox[3] - 1, bbox[1] + 1)
        for y in range(bbox[1], bbox[3]):
            t = (y - y0) / (y1 - y0)
            gd.line([(bbox[0], y), (bbox[2], y)], fill=sample_stops(stops, t) + (255,))
        shaded = Image.new("RGBA", (S, S), (0, 0, 0, 0))
        shaded.paste(grad, mask=mask)
        self.im.alpha_composite(shaded)
        eroded = mask.filter(ImageFilter.MinFilter(3))
        edge = ImageChops.subtract(mask, eroded)
        fade = Image.new("L", (S, S), 0)
        fd = ImageDraw.Draw(fade)
        for y in range(S):
            fd.line([(0, y), (S, y)], fill=int(200 * (1 - y / S) ** 1.35))
        edge = ImageChops.multiply(edge, fade)
        hi = (255, 248, 230) if metal == "gold" else (255, 255, 255) if metal == "chrome" else lighten(color, 0.75)
        layer = Image.new("RGBA", (S, S), hi + (0,))
        layer.putalpha(edge)
        self.im.alpha_composite(layer)

    def rr(self, rect, radius, color, metal="steel"):
        x1, y1, x2, y2 = rect
        if x2 < x1:
            x1, x2 = x2, x1
        if y2 < y1:
            y1, y2 = y2, y1
        if x2 - x1 < 2 or y2 - y1 < 2:
            return
        r = max(0, min(int(radius), (x2 - x1) // 2, (y2 - y1) // 2))

        def drawer(d):
            d.rounded_rectangle([x1, y1, x2, y2], radius=r, fill=255)

        self._paint(drawer, color, metal)

    def poly(self, points, color, metal="steel"):
        if len(points) < 3:
            return

        def drawer(d):
            d.polygon(points, fill=255)

        self._paint(drawer, color, metal)

    def ellipse(self, rect, color, metal="steel"):
        x1, y1, x2, y2 = rect
        if x2 - x1 < 2 or y2 - y1 < 2:
            return

        def drawer(d):
            d.ellipse([x1, y1, x2, y2], fill=255)

        self._paint(drawer, color, metal)

    def line(self, points, color, width):
        ImageDraw.Draw(self.im).line(points, fill=color + (255,), width=width, joint="curve")

    def arc(self, rect, start, end, color, width):
        ImageDraw.Draw(self.im).arc(rect, start=start, end=end, fill=color + (255,), width=width)

    def punch_ellipse(self, rect):
        mask = Image.new("L", (S, S), 0)
        ImageDraw.Draw(mask).ellipse(rect, fill=255)
        r, g, b, a = self.im.split()
        a = ImageChops.subtract(a, mask)
        self.im = Image.merge("RGBA", (r, g, b, a))


def grip_marks(c: Canvas, polygon, color, style, rng):
    if style == 0:
        return
    overlay = Image.new("RGBA", (S, S), (0, 0, 0, 0))
    d = ImageDraw.Draw(overlay)
    mark = darken(color, 0.35) + (180,)
    xs = [p[0] for p in polygon]
    ys = [p[1] for p in polygon]
    if style == 1:
        for y in range(min(ys) + 8, max(ys) - 4, 10):
            d.line([(min(xs) + 6, y), (max(xs) - 6, y)], fill=mark, width=3)
    else:
        for i in range(8):
            x = min(xs) + 8 + (i * 17) % max(8, (max(xs) - min(xs) - 10))
            y = min(ys) + 10 + (i * 23) % max(8, (max(ys) - min(ys) - 10))
            d.ellipse((x, y, x + 5, y + 5), fill=mark)
    mask = Image.new("L", (S, S), 0)
    ImageDraw.Draw(mask).polygon(polygon, fill=255)
    r, g, b, a = overlay.split()
    a = ImageChops.multiply(a, mask)
    c.im.alpha_composite(Image.merge("RGBA", (r, g, b, a)))


def add_muzzle(c, pal, var, x, y, h=8):
    if var.muzzle == 1:
        c.poly(pts((x, y), (x + 7, y - 2), (x + 7, y + h + 2), (x, y + h)), pal.body_dark, pal.metal)
    elif var.muzzle == 2:
        c.rr(box(x - 1, y - 2, x + 10, y + h + 2), U, pal.body_dark, "steel")
        c.rr(box(x + 8, y - 1, x + 11, y + h + 1), U, pal.accent2, "flat")


def pistol_body(c, pal, var, flags):
    c.rr(box(18, 38, 74, 52), 2 * U, pal.body, pal.metal)
    c.rr(box(72, 41, 88, 49), U, pal.body_dark, pal.metal)
    add_muzzle(c, pal, var, 86, 41, 8)
    c.rr(box(24, 32, 32, 39), U, pal.body_dark, "steel")
    c.rr(box(64, 32, 72, 39), U, pal.body_dark, "steel")
    if var.optic:
        c.rr(box(40, 31, 58, 39), U, pal.body_dark, "steel")
        c.ellipse(box(46, 33, 52, 38), pal.accent2, "flat")
    if "water" in flags:
        c.rr(box(36, 24, 62, 36), 2 * U, pal.accent, "flat")
        c.ellipse(box(40, 27, 48, 34), lighten(pal.accent, 0.35), "flat")
    c.rr(box(24, 50, 58, 57), U, pal.body_dark, pal.metal)
    grip = pts((28, 55), (54, 55), (58, 66), (52, 86), (36, 88), (30, 68))
    c.poly(grip, pal.accent, "flat")
    grip_marks(c, grip, pal.accent, var.grip, None)
    c.rr(box(38, 84, 50, 89), U, pal.accent2, "flat")
    c.arc(box(48, 52, 68, 70), 300, 70, pal.body_dark, 3 * U)
    sx = 30 + (var.stripe % 5) * 7
    c.rr(box(sx, 40, sx + 3.2, 50), U, pal.accent2, "flat")
    if "taser" in flags:
        c.line(pts((88, 42), (97, 40)), pal.accent2, 2 * U)
        c.line(pts((88, 48), (97, 50)), pal.accent2, 2 * U)


def draw_pistol(c, pal, var, flags):
    pistol_body(c, pal, var, flags)


def draw_deagle(c, pal, var, flags):
    c.poly(pts((16, 40), (78, 34), (82, 52), (18, 56)), pal.body, pal.metal)
    c.rr(box(78, 38, 94, 50), U, pal.body_dark, pal.metal)
    c.rr(box(22, 30, 34, 40), U, pal.body_dark, "steel")
    grip = pts((26, 54), (52, 50), (64, 86), (42, 92), (28, 70))
    c.poly(grip, pal.accent, "flat")
    grip_marks(c, grip, pal.accent, var.grip, None)
    c.arc(box(48, 50, 70, 72), 310, 80, pal.body_dark, 3 * U)
    c.rr(box(36, 38, 40, 50), U, pal.accent2, "flat")


def draw_revolver(c, pal, var, flags):
    c.rr(box(46, 40, 90, 50), U, pal.body, pal.metal)
    c.ellipse(box(28, 34, 52, 58), pal.body_dark, pal.metal)
    c.ellipse(box(34, 40, 46, 52), pal.accent, "flat")
    c.punch_ellipse(box(37, 43, 43, 49))
    c.rr(box(18, 36, 34, 44), U, pal.body_dark, "steel")
    grip = pts((30, 56), (48, 56), (52, 88), (34, 90), (28, 68))
    c.poly(grip, pal.accent, "flat")
    c.arc(box(46, 50, 64, 70), 300, 70, pal.body_dark, 3 * U)
    c.rr(box(24, 30, 32, 38), U, pal.body, pal.metal)


def draw_smg(c, pal, var, flags):
    if "vector" in flags:
        c.poly(pts((22, 50), (72, 36), (80, 48), (36, 60)), pal.body, pal.metal)
        c.rr(box(76, 40, 94, 49), U, pal.body_dark, pal.metal)
        mag = pts((38, 58), (52, 52), (62, 86), (48, 90))
        c.poly(mag, pal.accent, "flat")
        c.line(pts((18, 48), (8, 42), (8, 58), (20, 56)), pal.body_dark, 3 * U)
        return
    c.rr(box(8, 44, 24, 58), 2 * U, pal.body_dark, pal.metal)
    c.line(pts((10, 46), (4, 40), (4, 62), (12, 56)), pal.body_dark, 3 * U)
    c.rr(box(20, 38, 68, 56), 2 * U, pal.body, pal.metal)
    c.rr(box(66, 42, 90, 51), U, pal.body_dark, pal.metal)
    add_muzzle(c, pal, var, 88, 42, 9)
    if var.optic or "mp5" in flags:
        c.rr(box(36, 30, 58, 39), U, pal.body_dark, "steel")
    mag = pts((36, 54), (50, 54), (52, 86), (38, 86))
    c.poly(mag, pal.accent, "flat")
    grip_marks(c, mag, pal.accent, var.grip, None)
    c.poly(pts((54, 54), (66, 54), (70, 74), (58, 76)), pal.accent2, "flat")
    sx = 28 + (var.stripe % 4) * 8
    c.rr(box(sx, 40, sx + 3, 54), U, pal.accent2, "flat")


def draw_ar(c, pal, var, flags):
    bull = "bullpup" in flags
    if bull:
        c.rr(box(10, 42, 78, 58), 2 * U, pal.body, pal.metal)
        c.rr(box(76, 44, 96, 52), U, pal.body_dark, pal.metal)
        c.rr(box(18, 56, 32, 80), U, pal.accent, "flat")
        c.rr(box(34, 32, 62, 42), U, pal.body_dark, "steel")
        c.ellipse(box(52, 34, 60, 40), pal.accent2, "flat")
        return
    c.poly(pts((6, 40), (22, 36), (26, 58), (8, 64)), pal.body_dark, pal.metal)
    c.rr(box(20, 38, 70, 56), 2 * U, pal.body, pal.metal)
    c.rr(box(68, 42, 94, 50), U, pal.body_dark, pal.metal)
    add_muzzle(c, pal, var, 92, 42, 8)
    c.rr(box(40, 30, 66, 39), U, pal.body_dark, "steel")
    if var.optic:
        c.ellipse(box(56, 32, 64, 38), pal.accent2, "flat")
    mag = pts((36, 54), (50, 54), (50, 84), (36, 84))
    c.poly(mag, pal.accent, "flat")
    grip_marks(c, mag, pal.accent, var.grip, None)
    c.poly(pts((52, 54), (64, 54), (66, 72), (54, 74)), pal.body_dark, "steel")
    sx = 26 + (var.stripe % 4) * 8
    c.rr(box(sx, 40, sx + 3.2, 54), U, pal.accent2, "flat")


def draw_arp(c, pal, var, flags):
    c.rr(box(28, 40, 70, 56), 2 * U, pal.body, pal.metal)
    c.rr(box(68, 43, 86, 51), U, pal.body_dark, pal.metal)
    c.rr(box(18, 44, 30, 54), U, pal.body_dark, "steel")
    add_muzzle(c, pal, var, 84, 43, 8)
    if var.optic:
        c.rr(box(40, 32, 60, 41), U, pal.body_dark, "steel")
        c.ellipse(box(52, 34, 58, 39), pal.accent2, "flat")
    mag = pts((40, 54), (54, 54), (56, 86), (40, 88))
    c.poly(mag, pal.accent, "flat")
    grip = pts((56, 54), (68, 56), (70, 78), (58, 76))
    c.poly(grip, pal.accent2, "flat")
    c.rr(box(32, 42, 36, 54), U, pal.accent2, "flat")


def draw_ak(c, pal, var, flags):
    c.poly(pts((4, 42), (24, 38), (26, 56), (6, 62)), pal.body_dark, pal.metal)
    c.rr(box(18, 38, 64, 56), 2 * U, pal.body, pal.metal)
    c.rr(box(60, 34, 74, 42), U, pal.body_dark, "steel")
    c.rr(box(62, 42, 94, 50), U, pal.body_dark, pal.metal)
    c.rr(box(86, 38, 92, 44), U, pal.accent2, "flat")
    # Banana magazine, kicked forward so it does not read as a straight AR mag.
    mag = pts((34, 54), (50, 52), (60, 66), (66, 82), (54, 94), (40, 84), (34, 68))
    c.poly(mag, pal.accent, "flat")
    grip_marks(c, mag, pal.accent, var.grip, None)
    c.poly(pts((50, 54), (62, 54), (64, 72), (52, 70)), pal.body_dark, "steel")
    c.rr(box(28, 40, 32, 52), U, pal.accent2, "flat")


def draw_draco(c, pal, var, flags):
    c.rr(box(30, 40, 68, 56), 2 * U, pal.body, pal.metal)
    c.rr(box(64, 36, 76, 44), U, pal.body_dark, "steel")
    c.rr(box(66, 43, 88, 51), U, pal.body_dark, pal.metal)
    c.rr(box(18, 44, 32, 54), U, pal.body_dark, "steel")
    mag = pts((34, 54), (50, 52), (58, 68), (62, 86), (48, 94), (36, 80), (32, 64))
    c.poly(mag, pal.accent, "flat")
    c.rr(box(40, 42, 44, 52), U, pal.accent2, "flat")


def draw_shotgun(c, pal, var, flags):
    c.poly(pts((4, 40), (26, 36), (28, 58), (6, 66)), pal.body_dark, pal.metal)
    c.rr(box(22, 38, 58, 56), 2 * U, pal.body, pal.metal)
    c.rr(box(56, 40, 96, 48), U, pal.body, pal.metal)
    c.rr(box(56, 48, 92, 53), U, pal.body_dark, "steel")
    c.rr(box(64, 52, 84, 62), 2 * U, pal.accent, "flat")
    c.rr(box(30, 40, 34, 54), U, pal.accent2, "flat")


def draw_sawnoff(c, pal, var, flags):
    c.rr(box(24, 40, 52, 60), 2 * U, pal.body, pal.metal)
    c.rr(box(50, 38, 94, 46), U, pal.body_dark, pal.metal)
    c.rr(box(50, 48, 94, 56), U, pal.body, pal.metal)
    grip = pts((26, 58), (46, 58), (50, 86), (32, 88), (24, 68))
    c.poly(grip, pal.accent, "flat")
    c.rr(box(36, 42, 42, 56), U, pal.accent2, "flat")


def draw_musket(c, pal, var, flags):
    c.poly(pts((6, 46), (34, 40), (36, 62), (8, 70)), (92, 64, 40), "flat")
    c.rr(box(30, 42, 92, 52), U, pal.body, pal.metal)
    c.poly(pts((88, 40), (98, 47), (88, 54)), pal.body_dark, "steel")
    c.rr(box(48, 36, 54, 44), U, pal.accent, "flat")


def draw_sniper(c, pal, var, flags):
    c.poly(pts((4, 44), (22, 40), (24, 64), (6, 70)), pal.body_dark, pal.metal)
    c.rr(box(18, 42, 62, 58), 2 * U, pal.body, pal.metal)
    c.rr(box(58, 44, 97, 52), U, pal.body_dark, pal.metal)
    c.rr(box(28, 28, 70, 42), 3 * U, pal.body_dark, "steel")
    c.ellipse(box(30, 31, 40, 39), (20, 24, 28), "flat")
    c.ellipse(box(58, 31, 68, 39), pal.accent, "flat")
    c.rr(box(34, 56, 46, 74), U, pal.accent, "flat")


def draw_mg(c, pal, var, flags):
    c.rr(box(16, 40, 62, 60), 2 * U, pal.body, pal.metal)
    c.rr(box(58, 44, 96, 54), U, pal.body_dark, pal.metal)
    c.rr(box(8, 44, 20, 66), 2 * U, pal.body_dark, "steel")
    c.rr(box(24, 58, 48, 78), 2 * U, pal.accent, "flat")
    c.line(pts((70, 54), (64, 70), (78, 70)), pal.body_dark, 3 * U)
    c.rr(box(30, 32, 52, 41), U, pal.body_dark, "steel")


def draw_minigun(c, pal, var, flags):
    c.rr(box(16, 36, 48, 72), 4 * U, pal.body, pal.metal)
    for i, y in enumerate((34, 46, 58)):
        c.rr(box(46, y, 94, y + 10), U, pal.body_dark, pal.metal)
    c.ellipse(box(86, 42, 98, 62), pal.accent2, "flat")
    c.rr(box(18, 70, 42, 90), 2 * U, pal.accent, "flat")
    c.rr(box(22, 28, 40, 38), U, pal.body_dark, "steel")


def draw_launcher(c, pal, var, flags):
    c.rr(box(12, 40, 84, 58), 4 * U, pal.body, pal.metal)
    c.poly(pts((80, 36), (98, 49), (80, 62)), pal.accent, "flat")
    c.rr(box(6, 44, 16, 54), U, pal.body_dark, "steel")
    c.poly(pts((32, 56), (46, 56), (48, 82), (30, 82)), pal.accent2, "flat")
    c.rr(box(22, 32, 48, 42), U, pal.body_dark, "steel")


def draw_rpg(c, pal, var, flags):
    draw_launcher(c, pal, var, flags)


def draw_firework(c, pal, var, flags):
    c.rr(box(38, 28, 62, 86), 3 * U, pal.body, pal.metal)
    c.poly(pts((34, 28), (66, 28), (50, 10)), pal.accent, "flat")
    c.ellipse(box(44, 40, 56, 52), pal.accent2, "flat")
    c.rr(box(28, 48, 40, 70), U, pal.body_dark, "steel")


def draw_railgun(c, pal, var, flags):
    c.poly(pts((8, 48), (30, 36), (86, 36), (96, 50), (86, 64), (30, 64)), pal.body, "steel")
    c.rr(box(24, 46, 90, 52), U, pal.accent, "flat")
    c.rr(box(36, 62, 52, 84), U, pal.accent2, "flat")
    c.ellipse(box(84, 44, 96, 56), pal.accent2, "flat")


def draw_emplauncher(c, pal, var, flags):
    c.rr(box(14, 40, 80, 60), 4 * U, pal.body, pal.metal)
    c.ellipse(box(68, 36, 96, 64), pal.accent, "flat")
    c.ellipse(box(76, 44, 88, 56), (230, 250, 255), "flat")
    c.poly(pts((30, 58), (44, 58), (46, 82), (28, 82)), pal.body_dark, "steel")
    c.arc(box(48, 28, 70, 46), 200, 340, pal.accent2, 2 * U)


def draw_raypistol(c, pal, var, flags):
    c.ellipse(box(22, 36, 70, 62), pal.body, pal.metal)
    c.rr(box(60, 42, 90, 56), 3 * U, pal.body_dark, pal.metal)
    c.ellipse(box(82, 40, 98, 58), pal.accent, "flat")
    c.ellipse(box(88, 46, 94, 52), (255, 255, 255), "flat")
    grip = pts((30, 58), (52, 58), (56, 86), (36, 88))
    c.poly(grip, pal.accent2, "flat")


def draw_raycarbine(c, pal, var, flags):
    c.rr(box(16, 40, 78, 58), 3 * U, pal.body, pal.metal)
    c.ellipse(box(70, 36, 98, 62), pal.accent, "flat")
    c.rr(box(8, 44, 20, 62), U, pal.body_dark, "steel")
    c.rr(box(32, 56, 46, 80), U, pal.accent2, "flat")
    c.rr(box(28, 32, 58, 42), U, pal.body_dark, "steel")


def blade(c, pal, width, curve=0):
    # Diagonal blade from lower-left handle to upper-right tip.
    c.poly(
        pts((18, 78), (30, 86), (84, 22 + curve), (78, 12), (24, 70)),
        pal.body,
        pal.metal,
    )
    c.line(pts((26, 76), (80, 18)), lighten(pal.body, 0.45), max(2, width))


def draw_knife(c, pal, var, flags):
    if "karambit" in flags:
        c.arc(box(18, 18, 86, 86), 20, 200, pal.body, 7 * U)
        c.rr(box(18, 62, 36, 88), 2 * U, pal.accent, "flat")
        c.ellipse(box(22, 70, 30, 80), pal.accent2, "flat")
        return
    if "machete" in flags:
        c.poly(pts((16, 70), (34, 84), (88, 28), (78, 14), (22, 62)), pal.body, pal.metal)
        c.rr(box(14, 68, 32, 90), 2 * U, pal.accent, "flat")
        return
    if "dagger" in flags:
        c.poly(pts((46, 14), (58, 40), (52, 78), (40, 40)), pal.body, pal.metal)
        c.rr(box(28, 72, 68, 80), U, pal.accent2, "flat")
        c.rr(box(42, 78, 54, 94), 2 * U, pal.accent, "flat")
        return
    c.poly(pts((18, 64), (34, 74), (86, 22), (78, 14), (24, 56)), pal.body, pal.metal)
    c.line(pts((28, 62), (80, 20)), lighten(pal.body, 0.5), 2 * U)
    c.rr(box(12, 66, 32, 88), 2 * U, pal.accent, "flat")
    c.rr(box(18, 74, 28, 80), U, pal.accent2, "flat")


def draw_katana(c, pal, var, flags):
    c.poly(pts((14, 82), (26, 90), (88, 20), (80, 10), (20, 74)), pal.body, pal.metal)
    c.line(pts((22, 80), (84, 16)), lighten(pal.body, 0.55), 2 * U)
    c.ellipse(box(16, 70, 36, 90), pal.accent2, "flat")
    c.rr(box(8, 78, 24, 96), 2 * U, pal.accent, "flat")
    c.line(pts((12, 82), (20, 90)), darken(pal.accent, 0.3), 2 * U)
    c.line(pts((14, 88), (22, 84)), darken(pal.accent, 0.3), 2 * U)


def draw_sword(c, pal, var, flags):
    c.poly(pts((48, 8), (56, 18), (54, 70), (42, 70), (40, 18)), pal.body, pal.metal)
    c.line(pts((48, 12), (48, 68)), lighten(pal.body, 0.5), 2 * U)
    c.rr(box(28, 68, 68, 76), U, pal.accent2, "flat")
    c.rr(box(44, 74, 52, 96), 2 * U, pal.accent, "flat")


def draw_saber(c, pal, var, flags):
    glow = Image.new("RGBA", (S, S), (0, 0, 0, 0))
    ImageDraw.Draw(glow).rounded_rectangle(box(40, 6, 60, 70), radius=8 * U, fill=pal.accent + (170,))
    glow = glow.filter(ImageFilter.GaussianBlur(12))
    c.im.alpha_composite(glow)
    c.rr(box(45, 10, 55, 68), 3 * U, (245, 250, 255), "flat")
    c.rr(box(43, 12, 47, 66), U, pal.accent, "flat")
    c.rr(box(53, 12, 57, 66), U, pal.accent, "flat")
    c.rr(box(40, 66, 60, 94), 2 * U, (36, 38, 44), "steel")
    c.rr(box(38, 66, 62, 73), U, pal.accent, "flat")
    c.rr(box(38, 84, 62, 89), U, pal.accent2, "flat")
    c.ellipse(box(46, 75, 54, 82), pal.accent2, "flat")


def draw_axe(c, pal, var, flags):
    c.line(pts((32, 90), (68, 16)), pal.accent, 5 * U)
    if "pick" in flags:
        c.poly(pts((60, 14), (92, 28), (70, 30), (86, 48), (64, 36), (58, 22)), pal.body, pal.metal)
    else:
        c.poly(pts((58, 10), (92, 18), (88, 48), (60, 36)), pal.body, pal.metal)
        c.line(pts((64, 16), (84, 22)), lighten(pal.body, 0.4), 2 * U)


def draw_scythe(c, pal, var, flags):
    c.line(pts((28, 92), (70, 18)), (70, 74, 64), 4 * U)
    c.poly(pts((62, 14), (94, 22), (88, 40), (70, 46), (60, 28)), pal.body, pal.metal)
    c.line(pts((70, 20), (86, 28)), lighten(pal.body, 0.4), 2 * U)


def draw_chainsaw(c, pal, var, flags):
    c.rr(box(10, 36, 48, 78), 4 * U, pal.body, pal.metal)
    c.ellipse(box(16, 44, 36, 64), pal.accent, "flat")
    c.rr(box(40, 46, 94, 62), U, pal.body_dark, "steel")
    d = ImageDraw.Draw(c.im)
    tooth = pal.accent2 + (255,)
    for x in range(44, 92, 8):
        d.polygon(pts((x, 46), (x + 4, 40), (x + 6, 46)), fill=tooth)
        d.polygon(pts((x, 62), (x + 4, 70), (x + 6, 62)), fill=tooth)
    c.rr(box(18, 72, 40, 90), 2 * U, pal.accent2, "flat")


def draw_bat(c, pal, var, flags):
    c.poly(pts((22, 88), (36, 92), (78, 28), (70, 16), (58, 18), (18, 78)), pal.body, pal.metal)
    c.rr(box(18, 78, 38, 94), 2 * U, pal.accent, "flat")
    c.line(pts((64, 24), (74, 30)), pal.accent2, 3 * U)


def draw_crowbar(c, pal, var, flags):
    c.line(pts((20, 80), (40, 60), (70, 30), (84, 34)), pal.body, 6 * U)
    c.line(pts((70, 30), (86, 16)), pal.body, 6 * U)
    c.line(pts((18, 78), (30, 92)), pal.accent, 6 * U)


def draw_hammer(c, pal, var, flags):
    c.line(pts((48, 90), (62, 28)), pal.accent, 5 * U)
    c.rr(box(28, 16, 86, 36), 2 * U, pal.body, pal.metal)
    c.rr(box(30, 18, 42, 34), U, pal.accent2, "flat")


def draw_wrench(c, pal, var, flags):
    c.line(pts((22, 80), (68, 28)), pal.body, 6 * U)
    c.arc(box(58, 8, 96, 46), 300, 120, pal.body, 6 * U)
    c.ellipse(box(70, 16, 86, 32), pal.accent, "flat")


def draw_golf(c, pal, var, flags):
    c.line(pts((30, 90), (62, 16)), pal.body, 3 * U)
    c.poly(pts((54, 14), (78, 20), (70, 32), (52, 24)), pal.accent, "flat")


def draw_hockey(c, pal, var, flags):
    c.line(pts((36, 10), (36, 70), (78, 86)), pal.body, 5 * U)
    c.rr(box(64, 78, 92, 92), 2 * U, pal.accent, "flat")


def draw_pool(c, pal, var, flags):
    c.poly(pts((18, 86), (28, 90), (82, 16), (74, 10)), pal.body, "flat")
    c.rr(box(16, 84, 32, 94), U, pal.accent, "flat")


def draw_candycane(c, pal, var, flags):
    c.arc(box(28, 8, 78, 58), 180, 360, (230, 40, 50), 8 * U)
    c.line(pts((30, 34), (30, 92)), (230, 40, 50), 8 * U)
    c.arc(box(36, 16, 70, 50), 200, 340, (250, 250, 250), 3 * U)
    c.line(pts((38, 36), (38, 90)), (250, 250, 250), 3 * U)


def draw_flashlight(c, pal, var, flags):
    c.rr(box(16, 42, 68, 60), 4 * U, pal.body, pal.metal)
    c.ellipse(box(60, 36, 90, 66), (230, 230, 200), "flat")
    c.ellipse(box(70, 44, 82, 58), pal.accent, "flat")
    c.rr(box(12, 46, 22, 56), U, pal.accent2, "flat")


def draw_baton(c, pal, var, flags):
    c.rr(box(18, 46, 86, 58), 4 * U, pal.body, pal.metal)
    c.rr(box(18, 44, 28, 60), 2 * U, pal.accent, "flat")
    c.rr(box(48, 44, 56, 60), U, pal.accent2, "flat")


def draw_knuckle(c, pal, var, flags):
    c.rr(box(14, 46, 88, 68), 3 * U, pal.body, pal.metal)
    for i in range(4):
        x = 22 + i * 16
        c.ellipse(box(x, 28, x + 14, 52), pal.accent, "flat")
        c.punch_ellipse(box(x + 3, 34, x + 11, 46))
    c.rr(box(12, 58, 24, 80), 2 * U, pal.accent2, "flat")


def draw_grenade(c, pal, var, flags):
    c.ellipse(box(28, 30, 72, 82), pal.body, pal.metal)
    c.rr(box(42, 18, 58, 34), 2 * U, pal.body_dark, "steel")
    c.line(pts((58, 22), (74, 12)), pal.accent, 2 * U)
    c.ellipse(box(70, 8, 80, 18), pal.accent2, "flat")
    c.arc(box(34, 40, 66, 74), 200, 340, darken(pal.body, 0.3), 2 * U)


def draw_molotov(c, pal, var, flags):
    c.poly(pts((40, 36), (60, 36), (66, 82), (34, 82)), (150, 190, 140), "flat")
    c.rr(box(44, 24, 56, 40), U, (170, 210, 160), "flat")
    c.poly(pts((46, 28), (54, 22), (62, 8), (48, 12), (42, 24)), pal.accent, "flat")
    c.ellipse(box(48, 6, 58, 16), (255, 220, 80), "flat")


def draw_sticky(c, pal, var, flags):
    c.ellipse(box(22, 30, 78, 78), pal.body, "flat")
    c.ellipse(box(36, 42, 64, 66), pal.accent, "flat")
    for ang in range(0, 360, 45):
        rad = math.radians(ang)
        x = 50 + math.cos(rad) * 30
        y = 54 + math.sin(rad) * 24
        c.ellipse(box(x - 4, y - 4, x + 4, y + 4), pal.accent2, "flat")


def draw_mine(c, pal, var, flags):
    c.ellipse(box(18, 40, 82, 74), pal.body, pal.metal)
    c.ellipse(box(40, 48, 60, 64), pal.accent, "flat")
    for x, y in ((30, 36), (50, 30), (70, 36), (24, 56), (76, 56), (34, 74), (66, 74)):
        c.poly(pts((x, y), (x - 4, y + 8), (x + 4, y + 8)), pal.body_dark, "steel")


def draw_pipebomb(c, pal, var, flags):
    c.rr(box(16, 42, 84, 64), 3 * U, pal.body, pal.metal)
    c.rr(box(10, 46, 20, 60), U, pal.accent, "flat")
    c.rr(box(80, 46, 92, 60), U, pal.accent, "flat")
    c.line(pts((84, 46), (94, 28)), pal.accent2, 2 * U)
    c.ellipse(box(88, 20, 98, 32), (255, 200, 60), "flat")


def draw_gas(c, pal, var, flags):
    c.rr(box(32, 26, 68, 84), 4 * U, pal.body, pal.metal)
    c.rr(box(40, 14, 60, 30), 2 * U, pal.body_dark, "steel")
    c.ellipse(box(42, 42, 58, 58), pal.accent, "flat")
    c.rr(box(44, 64, 56, 74), U, pal.accent2, "flat")


def draw_snowball(c, pal, var, flags):
    c.ellipse(box(18, 18, 82, 82), (236, 244, 255), "flat")
    c.ellipse(box(30, 28, 48, 44), (255, 255, 255), "flat")
    c.ellipse(box(52, 48, 70, 66), (210, 226, 245), "flat")


def draw_ball(c, pal, var, flags):
    c.ellipse(box(16, 16, 84, 84), pal.accent, "flat")
    c.arc(box(24, 20, 76, 80), 200, 20, darken(pal.accent, 0.35), 3 * U)
    c.arc(box(28, 28, 72, 72), 20, 160, lighten(pal.accent, 0.4), 3 * U)


def draw_flare(c, pal, var, flags):
    c.rr(box(46, 28, 56, 92), 2 * U, pal.body, "flat")
    glow = Image.new("RGBA", (S, S), (0, 0, 0, 0))
    ImageDraw.Draw(glow).ellipse(box(28, 6, 74, 40), fill=(255, 80, 40, 180))
    c.im.alpha_composite(glow.filter(ImageFilter.GaussianBlur(8)))
    c.ellipse(box(40, 12, 62, 34), (255, 170, 60), "flat")
    c.ellipse(box(46, 18, 56, 28), (255, 245, 210), "flat")


def draw_flaregun(c, pal, var, flags):
    c.rr(box(18, 42, 78, 58), 4 * U, pal.body, pal.metal)
    c.rr(box(70, 38, 96, 62), 3 * U, pal.body_dark, "steel")
    c.ellipse(box(84, 44, 94, 56), pal.accent, "flat")
    grip = pts((28, 56), (48, 56), (44, 86), (26, 84))
    c.poly(grip, pal.accent2, "flat")


def draw_jerrycan(c, pal, var, flags):
    c.poly(pts((22, 32), (70, 32), (78, 44), (78, 86), (22, 86)), pal.body, pal.metal)
    c.rr(box(28, 16, 58, 34), 2 * U, pal.body_dark, "steel")
    c.punch_ellipse(box(34, 18, 52, 30))
    c.rr(box(64, 22, 84, 36), 2 * U, pal.accent, "flat")
    c.rr(box(30, 48, 40, 74), U, pal.accent2, "flat")


def draw_extinguisher(c, pal, var, flags):
    c.rr(box(34, 24, 68, 88), 8 * U, (196, 36, 42), "flat")
    c.rr(box(44, 12, 58, 28), 2 * U, pal.body_dark, "steel")
    c.line(pts((62, 30), (84, 46), (80, 70)), (40, 44, 48), 3 * U)
    c.poly(pts((76, 66), (92, 62), (90, 74), (74, 74)), pal.body, "steel")
    c.rr(box(40, 36, 48, 70), U, lighten((196, 36, 42), 0.25), "flat")


def draw_gadget(c, pal, var, flags):
    c.rr(box(28, 18, 78, 70), 3 * U, pal.body, pal.metal)
    c.rr(box(34, 26, 72, 52), U, (20, 28, 24), "flat")
    c.rr(box(38, 32, 58, 40), U, pal.accent, "flat")
    c.line(pts((70, 22), (88, 8)), pal.accent2, 3 * U)
    c.ellipse(box(84, 4, 96, 16), pal.accent, "flat")
    c.rr(box(40, 68, 66, 92), 2 * U, pal.body_dark, "steel")


def draw_pencil(c, pal, var, flags):
    c.poly(pts((16, 78), (28, 90), (78, 28), (66, 16)), (240, 196, 60), "flat")
    c.poly(pts((70, 22), (86, 14), (78, 30)), (226, 176, 150), "flat")
    c.poly(pts((18, 80), (12, 92), (24, 88)), (60, 60, 64), "flat")
    c.line(pts((30, 70), (64, 32)), (210, 170, 40), 2 * U)


def draw_bread(c, pal, var, flags):
    c.ellipse(box(12, 38, 88, 80), (214, 158, 86), "flat")
    c.arc(box(28, 44, 48, 68), 200, 20, (160, 100, 50), 2 * U)
    c.arc(box(48, 42, 70, 66), 200, 30, (160, 100, 50), 2 * U)
    c.ellipse(box(24, 46, 40, 58), lighten((214, 158, 86), 0.3), "flat")


def draw_hotdog(c, pal, var, flags):
    c.ellipse(box(10, 38, 90, 78), (214, 150, 70), "flat")
    c.ellipse(box(16, 44, 84, 70), (176, 54, 48), "flat")
    c.line(pts((28, 52), (70, 60)), (230, 190, 70), 3 * U)


def draw_unicorn(c, pal, var, flags):
    c.poly(pts((50, 8), (62, 78), (38, 78)), (255, 236, 250), "flat")
    c.line(pts((50, 16), (50, 74)), (255, 150, 210), 2 * U)
    c.poly(pts((50, 86), (42, 74), (46, 70), (50, 78), (54, 70), (58, 74)), pal.accent, "flat")
    c.ellipse(box(44, 78, 56, 90), pal.accent2, "flat")


def draw_palm(c, pal, var, flags):
    c.poly(pts((46, 90), (58, 88), (54, 40), (42, 44)), (140, 90, 48), "flat")
    for ang, col in ((-50, (40, 150, 60)), (-20, (50, 170, 70)), (15, (30, 130, 55)), (50, (70, 180, 80))):
        rad = math.radians(ang - 90)
        x = 50 + math.cos(rad) * 34
        y = 36 + math.sin(rad) * 28
        c.poly(pts((48, 40), (x, y), (x + 8, y + 6)), col, "flat")


def draw_bone(c, pal, var, flags):
    c.rr(box(28, 44, 72, 58), 2 * U, (230, 224, 200), "flat")
    for rect in ((16, 36, 36, 54), (16, 50, 36, 68), (64, 36, 84, 54), (64, 50, 84, 68)):
        c.ellipse(box(*rect), (236, 230, 210), "flat")


def draw_wand(c, pal, var, flags):
    c.line(pts((24, 88), (68, 28)), pal.body, 3 * U)
    c.poly(pts((70, 18), (78, 28), (88, 14), (80, 8), (74, 20), (64, 12)), pal.accent, "flat")
    c.ellipse(box(76, 12, 86, 22), (255, 255, 220), "flat")


def draw_icicle(c, pal, var, flags):
    c.poly(pts((34, 10), (66, 12), (70, 28), (52, 94), (36, 30)), (190, 230, 255), "flat")
    c.line(pts((48, 18), (50, 80)), (255, 255, 255), 2 * U)


def draw_cleat(c, pal, var, flags):
    c.poly(pts((14, 58), (62, 50), (92, 58), (88, 72), (18, 74)), pal.body, "flat")
    c.poly(pts((48, 28), (70, 24), (74, 52), (50, 54)), pal.body_dark, "steel")
    for x in (28, 46, 64, 80):
        c.rr(box(x, 70, x + 8, 80), U, pal.accent, "flat")


def draw_taser(c, pal, var, flags):
    flags = set(flags)
    flags.add("taser")
    pistol_body(c, pal, var, flags)


def draw_bottle(c, pal, var, flags):
    c.rr(box(43, 14, 57, 32), U, pal.body_dark, "steel")
    c.poly(pts((34, 32), (66, 32), (72, 78), (28, 78)), pal.accent, "flat")
    c.poly(pts((30, 70), (70, 70), (74, 88), (26, 88)), pal.body, pal.metal)
    c.rr(box(40, 40, 48, 66), U, lighten(pal.accent, 0.35), "flat")


def draw_slingshot(c, pal, var, flags):
    c.line(pts((34, 90), (50, 42)), pal.body, 4 * U)
    c.line(pts((50, 42), (24, 16)), pal.accent, 4 * U)
    c.line(pts((50, 42), (76, 16)), pal.accent, 4 * U)
    c.line(pts((28, 22), (72, 22)), pal.accent2, 2 * U)
    c.ellipse(box(44, 34, 56, 48), pal.accent2, "flat")


DRAW = {
    "pistol": draw_pistol,
    "deagle": draw_deagle,
    "revolver": draw_revolver,
    "smg": draw_smg,
    "ar": draw_ar,
    "arp": draw_arp,
    "ak": draw_ak,
    "draco": draw_draco,
    "shotgun": draw_shotgun,
    "sawnoff": draw_sawnoff,
    "musket": draw_musket,
    "sniper": draw_sniper,
    "mg": draw_mg,
    "minigun": draw_minigun,
    "launcher": draw_launcher,
    "rpg": draw_rpg,
    "firework": draw_firework,
    "railgun": draw_railgun,
    "emplauncher": draw_emplauncher,
    "raypistol": draw_raypistol,
    "raycarbine": draw_raycarbine,
    "knife": draw_knife,
    "katana": draw_katana,
    "sword": draw_sword,
    "saber": draw_saber,
    "axe": draw_axe,
    "scythe": draw_scythe,
    "chainsaw": draw_chainsaw,
    "bat": draw_bat,
    "crowbar": draw_crowbar,
    "hammer": draw_hammer,
    "wrench": draw_wrench,
    "golf": draw_golf,
    "hockey": draw_hockey,
    "pool": draw_pool,
    "candycane": draw_candycane,
    "flashlight": draw_flashlight,
    "baton": draw_baton,
    "knuckle": draw_knuckle,
    "grenade": draw_grenade,
    "molotov": draw_molotov,
    "sticky": draw_sticky,
    "mine": draw_mine,
    "pipebomb": draw_pipebomb,
    "gas": draw_gas,
    "snowball": draw_snowball,
    "ball": draw_ball,
    "flare": draw_flare,
    "flaregun": draw_flaregun,
    "jerrycan": draw_jerrycan,
    "extinguisher": draw_extinguisher,
    "gadget": draw_gadget,
    "pencil": draw_pencil,
    "bread": draw_bread,
    "hotdog": draw_hotdog,
    "unicorn": draw_unicorn,
    "palm": draw_palm,
    "bone": draw_bone,
    "wand": draw_wand,
    "icicle": draw_icicle,
    "cleat": draw_cleat,
    "taser": draw_taser,
    "bottle": draw_bottle,
    "slingshot": draw_slingshot,
}

SHAPE_GROUP = {
    "pistol": "Pistol",
    "deagle": "Pistol",
    "revolver": "Pistol",
    "flaregun": "Pistol",
    "raypistol": "Pistol",
    "taser": "Pistol",
    "smg": "Submachine Gun",
    "raycarbine": "Submachine Gun",
    "ak": "Assault Rifle",
    "ar": "Assault Rifle",
    "arp": "Assault Rifle",
    "draco": "Assault Rifle",
    "shotgun": "Shotgun",
    "sawnoff": "Shotgun",
    "musket": "Shotgun",
    "sniper": "Sniper Rifle",
    "mg": "Light Machine Gun",
    "minigun": "Heavy Weapons",
    "launcher": "Heavy Weapons",
    "rpg": "Heavy Weapons",
    "firework": "Heavy Weapons",
    "railgun": "Heavy Weapons",
    "emplauncher": "Heavy Weapons",
    "knife": "Melee",
    "katana": "Melee",
    "sword": "Melee",
    "saber": "Melee",
    "axe": "Melee",
    "scythe": "Melee",
    "chainsaw": "Melee",
    "bat": "Melee",
    "crowbar": "Melee",
    "hammer": "Melee",
    "wrench": "Melee",
    "golf": "Melee",
    "hockey": "Melee",
    "pool": "Melee",
    "candycane": "Melee",
    "flashlight": "Melee",
    "baton": "Melee",
    "knuckle": "Melee",
    "pencil": "Melee",
    "bread": "Melee",
    "hotdog": "Melee",
    "unicorn": "Melee",
    "palm": "Melee",
    "bone": "Melee",
    "wand": "Melee",
    "icicle": "Melee",
    "cleat": "Melee",
    "bottle": "Melee",
    "slingshot": "Pistol",
    "grenade": "Throwable",
    "molotov": "Throwable",
    "sticky": "Throwable",
    "mine": "Throwable",
    "pipebomb": "Throwable",
    "gas": "Throwable",
    "snowball": "Throwable",
    "ball": "Throwable",
    "flare": "Throwable",
    "jerrycan": "Miscellaneous",
    "extinguisher": "Miscellaneous",
    "gadget": "Miscellaneous",
}


def parse_weapons(path):
    text = open(path, encoding="utf-8").read()
    start = text.index("\tWeapons = {")
    end = text.index("\tComponents = {")
    section = text[start:end]
    found = []
    for m in re.finditer(r"\['(WEAPON_[^']+)'\]\s*=\s*\{", section):
        i = m.end() - 1
        depth = 0
        body = None
        for j in range(i, len(section)):
            if section[j] == "{":
                depth += 1
            elif section[j] == "}":
                depth -= 1
                if depth == 0:
                    body = section[m.end() : j]
                    break
        if body is None:
            continue
        def grab(name):
            mm = re.search(rf"\b{name}\s*=\s*'([^']*)'", body)
            return mm.group(1) if mm else None

        weight = re.search(r"\bweight\s*=\s*([0-9.]+)", body)
        dur = re.search(r"\bdurability\s*=\s*([0-9.]+)", body)
        found.append(
            {
                "key": m.group(1),
                "label": grab("label") or m.group(1),
                "ammoname": grab("ammoname"),
                "weight": weight.group(1) if weight else "12000",
                "durability": dur.group(1) if dur else None,
                "throwable": bool(re.search(r"throwable\s*=\s*true", body)),
            }
        )
    return found


def dedupe(rows):
    best = {}
    for row in rows:
        k = row["key"].lower()
        if k not in best:
            best[k] = row
            continue
        cur = best[k]
        if bool(row["ammoname"]) and not cur["ammoname"]:
            best[k] = row
            continue
        if (" " in (row["label"] or "")) and (" " not in (cur["label"] or "")):
            best[k] = row
    return list(best.values())


def blob_of(row):
    return re.sub(r"[^a-z0-9]", "", f"{row['key']} {row['label']}".lower())


def raw_of(row):
    return f"{row['key']} {row['label']}".lower()


def has_stem(blob, *words):
    return any(w in blob for w in words)


def token_ends(raw, word):
    return re.search(rf"(^|[^a-z0-9])[a-z0-9]*{re.escape(word)}([^a-z0-9]|$)", raw) is not None


def is_bat_name(raw):
    # "combat" ends in "bat", so a plain suffix match turns Combat MG into a baseball bat.
    for tok in re.split(r"[^a-z0-9]+", raw):
        if tok.endswith("bat") and not tok.endswith("combat"):
            return True
    return False


def classify(row):
    key = row["key"].upper()
    # upper() is correct for ascii weapon names
    if row["key"].upper() in SKIP:
        return None, "skip"
    b = blob_of(row)
    r = raw_of(row)
    ammo = row["ammoname"]

    if "minigun" in b:
        return "minigun", "name"
    if "railgun" in b:
        return "railgun", "name"
    if "emplauncher" in b or b.endswith("emp"):
        return "emplauncher", "name"
    if "firework" in b:
        return "firework", "name"
    if "hominglauncher" in b or token_ends(r, "rpg"):
        return "rpg", "name"
    if "launcher" in b:
        return "launcher", "name"

    if row["throwable"] or has_stem(b, "molotov", "pipebomb", "proxmine", "stickybomb", "bzgas", "teargas", "smokegrenade", "snowball", "grenade"):
        if "flare" in b and "gun" not in b and "launcher" not in b:
            return "flare", "name"
        if "molotov" in b:
            return "molotov", "name"
        if "sticky" in b:
            return "sticky", "name"
        if "mine" in b or "prox" in b:
            return "mine", "name"
        if "pipe" in b:
            return "pipebomb", "name"
        if "snow" in b:
            return "snowball", "name"
        if "bzgas" in b or "teargas" in b or "smoke" in b:
            return "gas", "name"
        if "grenade" in b:
            return "grenade", "name"
        if "ball" in b:
            return "ball", "name"
        return "grenade", "throwable"

    if "lightsaber" in b or (b.endswith("saber") or "saber" in b) and "pistol" not in b:
        return "saber", "name"
    if "katana" in b:
        return "katana", "name"
    if "sword" in b:
        return "sword", "name"
    if "sythe" in b or "scythe" in b:
        return "scythe", "name"
    if "chainsaw" in b:
        return "chainsaw", "name"
    if "axe" in b or "hatchet" in b or "icebreaker" in b:
        return "axe", "name"
    if has_stem(b, "karambit", "knife", "dagger", "kunai", "machete", "machette", "switchblade"):
        return "knife", "name"
    if "knuckle" in b:
        return "knuckle", "name"
    if "candycane" in b:
        return "candycane", "name"
    if "crowbar" in b:
        return "crowbar", "name"
    if "golf" in b:
        return "golf", "name"
    if "poolcue" in b:
        return "pool", "name"
    if token_ends(r, "wrench"):
        return "wrench", "name"
    if "hammer" in b or "smash" in b:
        return "hammer", "name"
    if "flashlight" in b:
        return "flashlight", "name"
    if "nightstick" in b or "baton" in b:
        return "baton", "name"
    if "hockey" in b:
        return "hockey", "name"
    if "hotdog" in b:
        return "hotdog", "name"
    if "bottle" in b:
        return "bottle", "name"
    if "slingshot" in b:
        return "slingshot", "name"
    if is_bat_name(r):
        return "bat", "name"
    if "pencil" in b:
        return "pencil", "name"
    if "bread" in b:
        return "bread", "name"
    if "unicorn" in b:
        return "unicorn", "name"
    if "palm" in b:
        return "palm", "name"
    if "wand" in b or "wattastick" in b or "stellarstriker" in b:
        return "wand", "name"
    if "icicle" in b or "iceicle" in b:
        return "icicle", "name"
    if "cleat" in b:
        return "cleat", "name"
    if "dildo" in b or "sext" in b:
        return "baton", "name"
    if "skele" in b or token_ends(r, "bone") or "boneshard" in b:
        return "bone" if "skele" in b or token_ends(r, "bone") else "pistol", "name"

    if "extinguisher" in b:
        return "extinguisher", "name"
    if has_stem(b, "petrolcan", "hazardcan", "fertilizercan"):
        return "jerrycan", "name"
    if "metaldetector" in b or "digiscanner" in b:
        return "gadget", "name"
    if "flaregun" in b:
        return "flaregun", "name"
    if token_ends(r, "flare"):
        return "flare", "name"
    if "raypistol" in b:
        return "raypistol", "name"
    if "raycarbine" in b:
        return "raycarbine", "name"
    if "taser" in b or "stungun" in b:
        return "taser", "name"

    if has_stem(b, "sniper", "mosin", "marksmanrifle", "precisionrifle", "heavysniper", "pt700"):
        return "sniper", "name"
    if has_stem(b, "shotgun", "shotty", "sawnoff", "sawoff", "sawn", "spas", "boomstick", "beanbag", "dbshot", "pt870"):
        return ("sawnoff" if has_stem(b, "sawnoff", "sawoff", "dbshot", "boomstick") else "shotgun"), "name"
    if "musket" in b:
        return "musket", "name"
    if "combatmg" in b or token_ends(r, "mg") or b.endswith("mg"):
        if "smg" not in b:
            return "mg", "name"
    if has_stem(
        b,
        "smg",
        "pdw",
        "mp5",
        "mp7",
        "mp9",
        "mp40",
        "ump",
        "uzi",
        "mac10",
        "vector",
        "kvec",
        "pp19",
        "bizon",
        "p90",
        "ppsh",
        "tommy",
        "microsmg",
        "minismg",
        "machinepistol",
        "assaultsmg",
        "gusenberg",
        "skorpion",
        "scorpion",
        "tec9",
        "tecpistol",
    ) or token_ends(r, "iso") or token_ends(r, "evo") or token_ends(r, "mpl") or "foldedump" in b or "mp67" in b or re.search(r"mpa([0-9]|$)", b):
        return "smg", "name"
    if "drac" in b:
        return "draco", "name"
    if re.search(r"(^|[^a-z0-9])[a-z0-9]*aks?([0-9]+)?([^a-z0-9]|$)", r) or "mk47" in b:
        return "ak", "name"
    if "arp" in b:
        return "arp", "name"
    if has_stem(
        b,
        "ar15",
        "ar13",
        "carbine",
        "assaultrifle",
        "battlerifle",
        "advancedrifle",
        "specialcarbine",
        "bullpup",
        "compactrifle",
        "tacticalrifle",
        "militaryrifle",
        "heavyrifle",
        "hk416",
        "hk516",
        "scar",
        "grau",
        "aug",
        "m16",
        "m4a1",
        "sig556",
        "sigmcx",
        "mcx",
        "asval",
        "honeybadger",
        "badger",
        "sr47",
        "m400",
        "l85",
        "vandal",
        "sharacg",
        "bal27",
        "krig",
        "hkarp",
        "pdhk",
        "acr",
        "sbr",
        "plr",
    ) or re.search(r"(^|[^a-z0-9])m4([^a-z0-9]|$)", r):
        return "ar", "name"
    if has_stem(b, "revolver", "doubleaction"):
        return "revolver", "name"
    if has_stem(b, "deagle", "degale", "desert", "pistol50"):
        return "deagle", "name"
    if (
        has_stem(
            b,
            "pistol",
            "glock",
            "fnx",
            "fn57",
            "1911",
            "p320",
            "p226",
            "beretta",
            "makarov",
            "keltec",
            "hellcat",
            "cz75",
            "hk45",
            "usp",
            "sp320",
            "switch",
        )
        or re.search(r"g(17|18|19|20|21|22|23|26|34|40|41|43|45)([^0-9]|$)", b)
        or re.search(r"dg(17|18|19|20|23|26|43)", b)
        or b.endswith("ap")
        or re.search(r"(^|[^a-z0-9])ap([^a-z0-9]|$)", r)
    ):
        return "pistol", "name"

    if ammo in ("ammo-shotgun", "pd-shotgun", "pd-beanbag"):
        return "shotgun", "ammo"
    if ammo in ("ammo-sniper", "pd-sniper", "ammo-heavysniper"):
        return "sniper", "ammo"
    if ammo in ("ammo-rifle", "ammo-rifle2", "pd-rifle"):
        return "ar", "ammo"
    if ammo in ("ammo-grenade",):
        return "launcher", "ammo"
    if ammo in ("ammo-rocket",):
        return "rpg", "ammo"
    if ammo in ("ammo-firework",):
        return "firework", "ammo"
    if ammo in ("ammo-emp",):
        return "emplauncher", "ammo"
    if ammo in ("ammo-railgun",):
        return "railgun", "ammo"
    if ammo in ("ammo-flare",):
        return "flaregun", "ammo"
    if ammo:
        return "pistol", "ammo"
    return "bat", "melee-fallback"


def theme_for(blob, seed):
    rules = [
        ("wireframe", (40, 48, 44), (80, 255, 170), (180, 255, 220), "flat", "wireframe"),
        ("retropixel", (70, 80, 90), (255, 90, 140), (255, 220, 80), "flat", "retro"),
        ("rosegold", (214, 150, 140), (120, 50, 60), (255, 220, 210), "gold", None),
        ("darkmatter", (18, 12, 32), (170, 90, 255), (80, 200, 255), "flat", "galaxy"),
        ("gold", (212, 168, 48), (70, 48, 12), (255, 230, 150), "gold", None),
        ("chrome", (190, 198, 206), (50, 60, 72), (255, 255, 255), "chrome", None),
        ("chromium", (190, 198, 206), (50, 60, 72), (255, 255, 255), "chrome", None),
        ("silver", (190, 198, 206), (50, 60, 72), (255, 255, 255), "chrome", None),
        ("diamond", (210, 230, 240), (80, 140, 170), (255, 255, 255), "chrome", None),
        ("prismatic", (80, 80, 90), (255, 80, 180), (80, 220, 255), "steel", "rainbow"),
        ("iridescent", (80, 80, 90), (255, 80, 180), (80, 220, 255), "steel", "rainbow"),
        ("rainbow", (90, 90, 100), (255, 80, 80), (80, 180, 255), "steel", "rainbow"),
        ("galaxy", (24, 16, 48), (180, 90, 255), (255, 255, 255), "flat", "galaxy"),
        ("cosmic", (24, 16, 48), (180, 90, 255), (255, 255, 255), "flat", "galaxy"),
        ("nebula", (36, 16, 64), (255, 80, 160), (80, 180, 255), "flat", "galaxy"),
        ("interstellar", (20, 16, 50), (120, 80, 255), (255, 255, 255), "flat", "galaxy"),
        ("leopard", (186, 140, 78), (70, 42, 18), (40, 24, 10), "flat", "leopard"),
        ("tiger", (190, 120, 40), (40, 24, 12), (255, 180, 60), "flat", "tiger"),
        ("camo", (78, 92, 58), (40, 50, 32), (120, 110, 70), "flat", "camo"),
        ("marble", (220, 220, 224), (140, 140, 150), (255, 255, 255), "flat", "marble"),
        ("hazard", (230, 180, 20), (20, 20, 20), (40, 40, 40), "flat", "hazard"),
        ("lava", (48, 18, 14), (255, 90, 20), (255, 200, 40), "flat", "lava"),
        ("magma", (48, 18, 14), (255, 90, 20), (255, 200, 40), "flat", "lava"),
        ("flame", (60, 20, 14), (255, 110, 20), (255, 200, 60), "flat", "lava"),
        ("ice", (176, 220, 245), (70, 140, 190), (255, 255, 255), "chrome", "ice"),
        ("frost", (176, 220, 245), (70, 140, 190), (255, 255, 255), "chrome", "ice"),
        ("iced", (176, 220, 245), (70, 140, 190), (255, 255, 255), "chrome", "ice"),
        ("glacier", (176, 220, 245), (70, 140, 190), (255, 255, 255), "chrome", "ice"),
        ("vortex", (16, 24, 60), (80, 140, 255), (180, 220, 255), "flat", "vortex"),
        ("steampunk", (150, 100, 52), (80, 50, 24), (220, 180, 110), "bronze", None),
        ("kawai", (255, 150, 196), (255, 90, 160), (255, 255, 255), "flat", "dots"),
        ("kitty", (255, 150, 196), (255, 90, 160), (255, 255, 255), "flat", "dots"),
        ("cute", (255, 160, 200), (255, 100, 170), (255, 255, 255), "flat", "dots"),
        ("graveyard", (62, 74, 64), (30, 36, 30), (150, 160, 140), "flat", None),
        ("halloween", (28, 26, 32), (255, 120, 24), (20, 20, 20), "flat", None),
        ("christmas", (190, 36, 42), (30, 130, 64), (240, 220, 180), "flat", None),
        ("easter", (255, 190, 214), (120, 180, 255), (255, 255, 255), "flat", "dots"),
        ("toxic", (150, 210, 40), (20, 40, 10), (210, 255, 80), "flat", None),
        ("slime", (130, 210, 50), (20, 50, 16), (220, 255, 120), "flat", None),
        ("matrix", (12, 24, 14), (40, 220, 80), (180, 255, 190), "flat", None),
        ("ocean", (24, 110, 160), (180, 230, 240), (10, 40, 70), "steel", None),
        ("water", (40, 150, 210), (200, 240, 255), (10, 70, 110), "flat", None),
        ("lightning", (40, 50, 70), (120, 180, 255), (230, 245, 255), "steel", None),
        ("lighting", (40, 50, 70), (120, 180, 255), (230, 245, 255), "steel", None),
        ("blood", (90, 16, 22), (180, 30, 40), (40, 8, 10), "flat", None),
        ("skull", (210, 206, 190), (40, 36, 32), (255, 250, 240), "flat", None),
        ("bone", (220, 214, 196), (90, 80, 70), (255, 250, 240), "flat", None),
        ("damascus", (150, 150, 156), (80, 80, 88), (220, 220, 230), "steel", "damascus"),
        ("graffiti", (30, 30, 34), (255, 50, 120), (80, 220, 255), "flat", "graffiti"),
        ("cartoon", (90, 170, 255), (255, 200, 40), (255, 255, 255), "flat", None),
        ("portal", (120, 40, 200), (255, 140, 40), (255, 255, 255), "flat", None),
        ("thermal", (40, 16, 16), (255, 60, 20), (255, 200, 40), "flat", "lava"),
        ("phantom", (28, 30, 36), (180, 190, 210), (80, 90, 110), "steel", None),
        ("sinister", (28, 16, 18), (160, 30, 40), (80, 0, 0), "flat", None),
        ("reaper", (22, 22, 26), (180, 180, 190), (80, 0, 0), "steel", None),
        ("ghost", (200, 206, 214), (40, 44, 52), (255, 255, 255), "flat", None),
        ("angel", (236, 230, 210), (212, 175, 70), (255, 255, 255), "gold", None),
        ("devil", (40, 16, 18), (180, 30, 36), (20, 8, 8), "flat", None),
        ("heart", (230, 50, 90), (255, 170, 190), (120, 10, 30), "flat", None),
        ("abyss", (16, 22, 48), (80, 110, 200), (200, 220, 255), "steel", None),
        ("void", (12, 8, 20), (140, 60, 220), (40, 0, 60), "flat", None),
        ("cherry", (190, 40, 70), (255, 170, 190), (90, 10, 30), "flat", None),
        ("stpat", (24, 140, 60), (180, 220, 80), (10, 60, 24), "flat", None),
        ("summer", (240, 180, 70), (255, 120, 60), (255, 230, 160), "flat", None),
        ("beach", (230, 190, 120), (80, 160, 190), (255, 230, 180), "flat", None),
        ("cloud", (225, 230, 236), (120, 170, 210), (255, 255, 255), "flat", None),
        ("bbq", (120, 60, 36), (220, 100, 40), (60, 30, 16), "flat", None),
        ("ruby", (170, 24, 48), (255, 180, 190), (80, 8, 20), "flat", None),
        ("pink", (230, 120, 170), (255, 70, 140), (255, 220, 235), "flat", None),
        ("purple", (140, 70, 200), (70, 20, 110), (220, 180, 255), "flat", None),
        ("purp", (140, 70, 200), (70, 20, 110), (220, 180, 255), "flat", None),
        ("orange", (230, 120, 30), (120, 50, 8), (255, 200, 120), "flat", None),
        ("yellow", (230, 190, 40), (120, 90, 10), (255, 240, 160), "flat", None),
        ("lime", (150, 210, 40), (40, 80, 10), (220, 255, 140), "flat", None),
        ("cyan", (40, 190, 200), (10, 70, 90), (200, 255, 255), "flat", None),
        ("blue", (50, 110, 200), (16, 40, 90), (180, 220, 255), "flat", None),
        ("green", (40, 150, 70), (12, 60, 28), (170, 230, 170), "flat", None),
        ("white", (226, 228, 232), (90, 96, 104), (255, 255, 255), "chrome", None),
        ("black", (32, 34, 38), (12, 12, 14), (180, 180, 190), "steel", None),
        ("grey", (120, 124, 130), (40, 42, 48), (220, 220, 224), "steel", None),
        ("gray", (120, 124, 130), (40, 42, 48), (220, 220, 224), "steel", None),
        ("red", (190, 42, 42), (90, 12, 16), (255, 180, 170), "flat", None),
        ("brown", (140, 90, 48), (70, 42, 20), (210, 170, 110), "flat", None),
    ]
    # Avoid short-color false positives inside unrelated words.
    guards = {
        "ice": ("spice", "police", "notice"),
        "red": ("wired", "hundred", "stored", "shared"),
        "gold": (),
        "rose": (),
        "blue": (),
        "green": (),
        "pink": (),
        "white": (),
        "black": (),
        "tiger": (),
    }
    for word, body, accent, accent2, metal, pattern in rules:
        if word not in blob:
            continue
        blocked = False
        for bad in guards.get(word, ()):
            if bad in blob and word in bad:
                # only skip if the match is fully explained by the bad word
                if blob.count(word) == bad.count(word):
                    blocked = True
        if blocked:
            continue
        return body, accent, accent2, metal, pattern, word
    hue = seed % 360
    accent = hsv(hue, 0.62, 0.92)
    accent2 = hsv(hue + 36, 0.45, 1.0)
    body = (78, 84, 92)
    return body, accent, accent2, "steel", None, "steel"


def pattern_from(blob, theme_pattern):
    if "wireframe" in blob:
        return "wireframe"
    if "retropixel" in blob or "pixel" in blob:
        return "retro"
    return theme_pattern


def make_pal(blob, seed):
    body, accent, accent2, metal, pattern, theme = theme_for(blob, seed)
    pattern = pattern_from(blob, pattern)
    if theme in ("gold", "rosegold") and "camo" in blob:
        pattern = "camo"
    return Pal(body, darken(body, 0.28), accent, accent2, metal, pattern, theme)


def make_var(seed):
    rng = random.Random(seed)
    return Var(stripe=rng.randrange(5), muzzle=rng.randrange(3), optic=rng.random() < 0.35, grip=rng.randrange(3), seed=seed)


def flags_for(blob, shape):
    flags = set()
    if "bullpup" in blob:
        flags.add("bullpup")
    if "water" in blob:
        flags.add("water")
    if "vector" in blob or "kvec" in blob:
        flags.add("vector")
    if "mp5" in blob:
        flags.add("mp5")
    if "karambit" in blob:
        flags.add("karambit")
    if "machete" in blob or "machette" in blob:
        flags.add("machete")
    if "dagger" in blob or "kunai" in blob:
        flags.add("dagger")
    if "pick" in blob:
        flags.add("pick")
    if shape == "taser":
        flags.add("taser")
    return flags


def apply_pattern(im, pattern, pal, seed):
    if not pattern or pattern in ("wireframe", "retro"):
        return im
    rng = random.Random(seed)
    overlay = Image.new("RGBA", im.size, (0, 0, 0, 0))
    d = ImageDraw.Draw(overlay)
    if pattern == "camo":
        cols = [(68, 84, 48, 170), (48, 62, 36, 170), (120, 110, 70, 150), (36, 42, 28, 160)]
        for _ in range(40):
            x, y = rng.randrange(S), rng.randrange(S)
            w, h = rng.randrange(28, 90), rng.randrange(16, 46)
            d.ellipse((x, y, x + w, y + h), fill=rng.choice(cols))
    elif pattern == "leopard":
        for _ in range(46):
            x, y = rng.randrange(S), rng.randrange(S)
            w, h = rng.randrange(8, 18), rng.randrange(6, 14)
            d.ellipse((x, y, x + w, y + h), fill=(40, 24, 12, 210))
    elif pattern == "tiger":
        for i in range(10):
            x = 20 + i * 38
            d.polygon([(x, 0), (x + 14, 0), (x - 20, S), (x - 34, S)], fill=(50, 28, 12, 140))
    elif pattern == "galaxy":
        for _ in range(70):
            x, y = rng.randrange(S), rng.randrange(S)
            r = rng.choice((1, 1, 2, 2, 3))
            col = rng.choice(((255, 255, 255, 230), (255, 180, 255, 200), (140, 180, 255, 220)))
            d.ellipse((x, y, x + r, y + r), fill=col)
    elif pattern == "dots":
        for _ in range(28):
            x, y = rng.randrange(S), rng.randrange(S)
            r = rng.randrange(3, 7)
            d.ellipse((x, y, x + r, y + r), fill=(255, 255, 255, 170))
    elif pattern == "hazard":
        for i in range(-4, 12):
            x = i * 48
            d.polygon([(x, 0), (x + 22, 0), (x - 80, S), (x - 102, S)], fill=(20, 20, 20, 200))
    elif pattern == "lava":
        for _ in range(18):
            x, y = rng.randrange(S), rng.randrange(S)
            d.line((x, y, x + rng.randint(-30, 30), y + rng.randint(10, 40)), fill=(255, 120, 20, 180), width=3)
    elif pattern == "ice":
        for _ in range(16):
            x, y = rng.randrange(S), rng.randrange(S)
            d.line((x, y, x + rng.randint(-24, 24), y + rng.randint(-20, 20)), fill=(255, 255, 255, 160), width=2)
    elif pattern == "marble":
        for _ in range(12):
            x, y = rng.randrange(S), rng.randrange(S)
            d.arc((x, y, x + rng.randint(40, 120), y + rng.randint(20, 60)), 0, 220, fill=(150, 150, 160, 140), width=2)
    elif pattern == "vortex":
        for i in range(5):
            pad = 40 + i * 28
            d.arc((pad, pad, S - pad, S - pad), 20 + i * 30, 220 + i * 20, fill=pal.accent + (150,), width=4)
    elif pattern == "rainbow":
        for x in range(0, S, 8):
            col = hsv(x / S * 360, 0.7, 1.0) + (90,)
            d.line([(x, 0), (x, S)], fill=col, width=8)
    elif pattern == "graffiti":
        cols = [(255, 40, 90, 160), (40, 200, 255, 160), (255, 220, 40, 160), (80, 255, 120, 150)]
        for _ in range(20):
            x, y = rng.randrange(S), rng.randrange(S)
            d.ellipse((x, y, x + rng.randint(10, 28), y + rng.randint(10, 28)), fill=rng.choice(cols))
    elif pattern == "damascus":
        for i in range(16):
            y = i * 26
            d.arc((0, y, S, y + 40), 0, 180, fill=(255, 255, 255, 70), width=2)
    else:
        return im
    mask = im.getchannel("A")
    r, g, b, a = overlay.split()
    a = ImageChops.multiply(a, mask)
    overlay = Image.merge("RGBA", (r, g, b, a))
    out = im.copy()
    out.alpha_composite(overlay)
    return out


def apply_wireframe(im, color):
    alpha = im.getchannel("A")
    edges = alpha.filter(ImageFilter.FIND_EDGES)
    edges = edges.point(lambda p: 255 if p > 24 else 0)
    # thicken
    edges = edges.filter(ImageFilter.MaxFilter(3))
    line = Image.new("RGBA", im.size, color + (255,))
    faint = im.copy()
    faint.putalpha(alpha.point(lambda p: p // 7))
    line.putalpha(edges)
    return Image.alpha_composite(faint, line)


def resize_premul(im, size):
    arr = np.array(im).astype(np.float32)
    alpha = arr[:, :, 3:4]
    prem = arr[:, :, :3] * (alpha / 255.0)
    packed = np.dstack([prem, arr[:, :, 3]]).astype(np.uint8)
    res = np.array(Image.fromarray(packed, "RGBA").resize(size, Image.Resampling.LANCZOS)).astype(np.float32)
    a = res[:, :, 3:4]
    rgb = np.where(a > 1, np.clip(res[:, :, :3] * 255.0 / np.maximum(a, 1), 0, 255), 0)
    out = np.dstack([rgb, res[:, :, 3]]).astype(np.uint8)
    return Image.fromarray(out, "RGBA")


def shrink_to_safe(im, scale):
    """Pull artwork off the canvas edge so the slot border never clips it."""
    nw = max(1, int(S * scale))
    nh = max(1, int(S * scale))
    small = resize_premul(im, (nw, nh))
    canvas = Image.new("RGBA", (S, S), (0, 0, 0, 0))
    canvas.paste(small, ((S - nw) // 2, (S - nh) // 2), small)
    return canvas


def compose(shape, pal, var, flags):
    c = Canvas()
    DRAW[shape](c, pal, var, flags)
    im = apply_pattern(c.im, pal.pattern, pal, var.seed)
    if pal.pattern == "wireframe":
        im = apply_wireframe(im, pal.accent)
    im = shrink_to_safe(im, 0.84)
    alpha = im.getchannel("A")
    shifted = Image.new("L", (S, S), 0)
    shifted.paste(alpha, (6, 8))
    shifted = shifted.filter(ImageFilter.GaussianBlur(5)).point(lambda p: int(p * 0.45))
    shadow = Image.new("RGBA", (S, S), (0, 0, 0, 0))
    shadow.putalpha(shifted)
    out = Image.alpha_composite(shadow, im)
    icon = resize_premul(out, (ICON, ICON))
    if pal.pattern == "retro":
        small = icon.resize((25, 25), Image.Resampling.BOX)
        icon = small.resize((ICON, ICON), Image.Resampling.NEAREST)
    return icon


def lua_str(value):
    return "'" + value.replace("\\", "\\\\").replace("'", "\\'") + "'"


def lua_num(text):
    if text is None:
        return "nil"
    if "." in text:
        # keep a clean float
        value = float(text)
        if value.is_integer():
            return str(int(value))
        return f"{value:.4f}".rstrip("0").rstrip(".")
    return str(int(float(text)))


def ammo_type(row, shape):
    name = row["key"].lower()
    ammo = row["ammoname"]
    group = SHAPE_GROUP[shape]
    # Stock heavy weapons keep qb-core ammo names so reload behavior stays the same.
    stock_heavy = {
        "weapon_hominglauncher": "AMMO_RPG",
        "weapon_rpg": "AMMO_RPG",
        "weapon_grenadelauncher": "AMMO_GRENADELAUNCHER",
        "weapon_compactlauncher": "AMMO_GRENADELAUNCHER",
        "weapon_firework": "AMMO_FIREWORK",
        "weapon_railgun": "AMMO_RAILGUN",
        "weapon_railgunxm3": "AMMO_RAILGUN",
        "weapon_emplauncher": "AMMO_EMPLAUNCHER",
        "weapon_minigun": "AMMO_MINIGUN",
        "weapon_rayminigun": "AMMO_MINIGUN",
        "weapon_gusenberg": "AMMO_MG",
        "weapon_mg": "AMMO_MG",
        "weapon_combatmg": "AMMO_MG",
        "weapon_combatmg_mk2": "AMMO_MG",
        "weapon_flaregun": "AMMO_FLARE",
        "weapon_petrolcan": "AMMO_PETROLCAN",
        "weapon_hazardcan": "AMMO_HAZARDCAN",
        "weapon_fertilizercan": "AMMO_FERTILIZERCAN",
        "weapon_stungun": None,
        "weapon_raypistol": "AMMO_PISTOL",
    }
    if name in stock_heavy:
        return stock_heavy[name]
    if ammo in ("ammo-shotgun", "pd-shotgun", "pd-beanbag", "ammo-musket"):
        return "AMMO_SHOTGUN"
    if ammo in ("ammo-sniper", "pd-sniper", "ammo-heavysniper"):
        return "AMMO_SNIPER"
    if ammo in ("ammo-rifle", "ammo-rifle2", "pd-rifle"):
        return "AMMO_RIFLE"
    if ammo in ("ammo-grenade", "ammo-smokegrenade"):
        return "AMMO_GRENADELAUNCHER"
    if ammo == "ammo-rocket":
        return "AMMO_RPG"
    if ammo == "ammo-firework":
        return "AMMO_FIREWORK"
    if ammo == "ammo-flare":
        return "AMMO_FLARE"
    if ammo == "ammo-emp":
        return "AMMO_EMPLAUNCHER"
    if ammo == "ammo-railgun":
        return "AMMO_RAILGUN"
    if ammo == "ammo-9":
        if group == "Submachine Gun":
            return "AMMO_SMG"
        if group in ("Assault Rifle", "Light Machine Gun", "Sniper Rifle"):
            return "AMMO_SMG"
        return "AMMO_PISTOL"
    if ammo in ("ammo-44", "pd-pistol", "ammo-45", "ammo-50", "ammo-38", "ammo-22"):
        return "AMMO_PISTOL"
    if group == "Submachine Gun":
        return "AMMO_SMG"
    if group == "Shotgun":
        return "AMMO_SHOTGUN"
    if group == "Sniper Rifle":
        return "AMMO_SNIPER"
    if group == "Light Machine Gun":
        return "AMMO_MG"
    if group == "Heavy Weapons":
        return "AMMO_RIFLE"
    if group == "Pistol":
        return "AMMO_PISTOL"
    return None


def build_records():
    rows = dedupe(parse_weapons(SOURCE))
    records = []
    for row in rows:
        shape, how = classify(row)
        if shape is None:
            continue
        name = row["key"].lower()
        if not name.startswith("weapon_"):
            name = "weapon_" + name
        seed = zlib.crc32(name.encode())
        b = blob_of(row)
        pal = make_pal(b, seed)
        var = make_var(seed)
        flags = flags_for(b, shape)
        group = SHAPE_GROUP[shape]
        amm = ammo_type(row, shape)
        records.append(
            {
                "row": row,
                "name": name,
                "shape": shape,
                "how": how,
                "pal": pal,
                "var": var,
                "flags": flags,
                "group": group,
                "ammo": amm,
                "stock": name in STOCK,
                "seed": seed,
            }
        )
    records.sort(key=lambda rec: rec["name"])
    return records


def write_lua(records):
    os.makedirs(OUT_QB, exist_ok=True)
    item_lines = []
    weapon_lines = []
    dur_lines = []
    for rec in records:
        row = rec["row"]
        name = rec["name"]
        ammo = "nil" if rec["ammo"] is None else lua_str(rec["ammo"])
        label = lua_str(row["label"])
        desc = lua_str(DESC[rec["group"]])
        weight = lua_num(row["weight"])
        stock_guard_i = f"if QBShared.Items[{lua_str(name)}] == nil then\n" if rec["stock"] else ""
        stock_guard_w = f"if QBShared.Weapons[`{name}`] == nil then\n" if rec["stock"] else ""
        end_i = "\nend" if rec["stock"] else ""
        end_w = "\nend" if rec["stock"] else ""
        indent = "    " if rec["stock"] else ""
        item_lines.append(
            f"-- {row['key']}  shape={rec['shape']}  ox={row['ammoname'] or 'none'}\n"
            f"{stock_guard_i}"
            f"{indent}QBShared.Items[{lua_str(name)}] = {{\n"
            f"{indent}    name = {lua_str(name)},\n"
            f"{indent}    label = {label},\n"
            f"{indent}    weight = {weight},\n"
            f"{indent}    type = 'weapon',\n"
            f"{indent}    ammotype = {ammo},\n"
            f"{indent}    image = {lua_str(name + '.png')},\n"
            f"{indent}    unique = true,\n"
            f"{indent}    useable = false,\n"
            f"{indent}    description = {desc},\n"
            f"{indent}}}{end_i}\n"
        )
        weapon_lines.append(
            f"{stock_guard_w}"
            f"{indent}QBShared.Weapons[`{name}`] = {{\n"
            f"{indent}    name = {lua_str(name)},\n"
            f"{indent}    label = {label},\n"
            f"{indent}    weapontype = {lua_str(rec['group'])},\n"
            f"{indent}    ammotype = {ammo},\n"
            f"{indent}    damagereason = {lua_str(REASON[rec['group']])},\n"
            f"{indent}}}{end_w}\n"
        )
        if row["durability"]:
            dur_lines.append(f"Config.DurabilityMultiplier[{lua_str(name)}] = {lua_num(row['durability'])}\n")

    header = """-- VIP weapon pack for QBCore.
-- Load this from qb-core AFTER shared/items.lua and shared/weapons.lua.
--   qb-core/fxmanifest.lua  shared_scripts { ..., 'shared/vip_weapons.lua' }
-- Copy qb-inventory/html/images/*.png into qb-inventory/html/images/
-- Icons are 100x100 transparent PNGs, which is the inventory slot size.
-- Stock GTA weapons are registered only when qb-core does not already define them.

QBShared = QBShared or {}
QBShared.Items = QBShared.Items or {}
QBShared.Weapons = QBShared.Weapons or {}

"""
    with open(os.path.join(OUT_QB, "vip_weapons.lua"), "w", encoding="utf-8") as fh:
        fh.write(header)
        fh.write("-- Items\n")
        fh.write("\n".join(item_lines))
        fh.write("\n-- Weapon info\n")
        fh.write("\n".join(weapon_lines))
        fh.write(f"\n-- {len(records)} weapons\n")

    dur_header = """-- Optional durability for qb-weapons.
-- Load after config.lua:
--   qb-weapons/fxmanifest.lua  shared_scripts { 'config.lua', 'vip_durability.lua' }
-- Values come from the ox_inventory durability field on each weapon.

Config = Config or {}
Config.DurabilityMultiplier = Config.DurabilityMultiplier or {}

"""
    with open(os.path.join(OUT_QB, "vip_durability.lua"), "w", encoding="utf-8") as fh:
        fh.write(dur_header)
        fh.writelines(dur_lines)


def write_images(records):
    os.makedirs(OUT_IMAGES, exist_ok=True)
    for i, rec in enumerate(records, 1):
        icon = compose(rec["shape"], rec["pal"], rec["var"], rec["flags"])
        icon.save(os.path.join(OUT_IMAGES, rec["name"] + ".png"), "PNG", optimize=True)
        if i % 80 == 0:
            print(f"images {i}/{len(records)}", flush=True)


def write_preview(records):
    shapes = []
    seen = set()
    for rec in records:
        if rec["shape"] not in seen:
            seen.add(rec["shape"])
            shapes.append(rec)
    # one of each shape, plus a spread of custom guns
    sample = shapes + [rec for rec in records if not rec["stock"]][:48]
    cell = 116
    cols = 8
    rows = math.ceil(len(sample) / cols)
    sheet = Image.new("RGBA", (cols * cell, rows * cell + 8), (22, 24, 28, 255))
    draw = ImageDraw.Draw(sheet)
    for i, rec in enumerate(sample):
        icon = compose(rec["shape"], rec["pal"], rec["var"], rec["flags"])
        big = icon.resize((100, 100), Image.Resampling.NEAREST)
        x = (i % cols) * cell + 8
        y = (i // cols) * cell + 4
        # checker behind icon so transparency is visible
        tile = Image.new("RGBA", (100, 100), (0, 0, 0, 0))
        td = ImageDraw.Draw(tile)
        for yy in range(0, 100, 8):
            for xx in range(0, 100, 8):
                if (xx // 8 + yy // 8) % 2 == 0:
                    td.rectangle((xx, yy, xx + 8, yy + 8), fill=(48, 50, 56, 255))
                else:
                    td.rectangle((xx, yy, xx + 8, yy + 8), fill=(32, 34, 38, 255))
        tile.alpha_composite(big)
        sheet.alpha_composite(tile, (x, y))
        draw.text((x, y + 100), rec["shape"][:12], fill=(220, 220, 220, 255))
    path = os.path.join(ROOT, "qb-inventory", "preview.png")
    os.makedirs(os.path.dirname(path), exist_ok=True)
    sheet.convert("RGB").save(path, "PNG")
    print("preview", path, sheet.size)


def report(records, skipped):
    from collections import Counter

    print("kept", len(records), "skipped", len(skipped))
    print("shapes", Counter(r["shape"] for r in records))
    print("groups", Counter(r["group"] for r in records))
    print("how", Counter(r["how"] for r in records))
    print("themes", Counter(r["pal"].theme for r in records).most_common(30))
    print("-- fallback / odd --")
    for rec in records:
        if rec["how"] != "name":
            print(f"{rec['name']}|{rec['shape']}|{rec['how']}|{rec['row']['ammoname']}|{rec['row']['label']}")


def main():
    mode = sys.argv[1] if len(sys.argv) > 1 else "--all"
    rows = dedupe(parse_weapons(SOURCE))
    skipped = [row["key"] for row in rows if row["key"].upper() in SKIP]
    records = build_records()
    # sanity: every kept record has a drawer
    missing = sorted({rec["shape"] for rec in records if rec["shape"] not in DRAW})
    if missing:
        raise SystemExit(f"missing drawers: {missing}")
    if mode == "--report":
        report(records, skipped)
        return
    if mode == "--preview":
        report(records, skipped)
        write_preview(records)
        return
    if mode == "--lua":
        write_lua(records)
        print("lua", len(records))
        return
    report(records, skipped)
    write_lua(records)
    write_images(records)
    write_preview(records)
    print("done", len(records))


if __name__ == "__main__":
    main()
