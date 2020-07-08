# Worldgen Sandbox

- This pack defines a custom dimension with a single custom biome that generates a single custom structure
- The custom structure is based on the piglin bastion, but with a custom processor that replaces some obvious blocks
- However since the vanilla structure nbt files are still being referenced in the custom structure pool, only the first prefab is being affected here
- This is because the jigsaw bloks in the vanilla structures loop back to the vanilla structure pools, not our custom structure pool
- The next step is to create custom structure nbt files with jigsaw blocks that point back to the custom structure pool, to close the loop
- It seems that these two definitions must reference an existing vanilla structure in the registry (likely to change in future versions):
  - <https://github.com/Arcensoth/worldgen-sandbox-datapack/blob/master/data/minecraft/dimension/wgs/dungeon.json#L12>
  - <https://github.com/Arcensoth/worldgen-sandbox-datapack/blob/master/data/minecraft/worldgen/configured_structure_feature/wgs/dank_dungeon.json#L6>
- They do not need to overwrite it, however; it seems like they just use it to "group" in with that name, similar to how villages all fall under `village` structure type (see: `/locate`)
