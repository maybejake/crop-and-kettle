from beet import Context
import json

"""

This plugin fixes an issue where beet would copy the overlays from the datapack
to the resourcepack which can break things.

"""


def init(ctx: Context):
    ctx.cache.json['rp_mcmeta'] = json.dumps(ctx.assets.mcmeta.data)

def apply(ctx: Context):
    correct_overlays = []
    mcmeta = json.loads(ctx.cache.json['rp_mcmeta'])
    
    if 'overlays' in mcmeta and 'entries' in mcmeta['overlays']:
        for entry in mcmeta['overlays']['entries']:
            if 'directory' in entry:
                correct_overlays.append(entry['directory'])

    wrong_overlays = []
    for key in ctx.assets.overlays:
        if key not in correct_overlays:
            wrong_overlays.append(key)

    for key in wrong_overlays:
        ctx.assets.overlays.pop(key)