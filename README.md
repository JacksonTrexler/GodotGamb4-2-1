Personal favorite hobby project, it's the one I keep coming back to :)


![image](https://github.com/user-attachments/assets/4d46817d-31fa-4b67-b7a6-a34ab37fee5a)
**Effects**
Effects are dynamic properties that modify units, tiles, objects, or environmental systems.
Examples:

    "Wet" - increases lightning damage taken, increased fire resistance.
    "Inspired" - boosts spell power or reduces cast time.
    "Encumbered" - reduces movement and action speed.
    "Smothered" - prevents casting or speaking abilities.

Effects can:

    Stack or replace
    Decay over time
    Spread (disease, fire, morale changes)
    Be manipulated (absorbed, amplified, transferred)


**Maps**
Maps are grid-based, with each tile containing terrain, materials, and potential effects.
Tiles impact:

    Movement Cost
    Cover
    Vision
    Effect propagation
    - On enter
    - On exit
    - On turn end
    - While passing over

Examples of Tiles:

    Grass: low cost, flammable
    Mud: high cost, spreads "Mired" effect
    Plastic Path (Circus Wilds): slick surface, reflects heat
    Lava / Ice / Metal: specific interactions with spells or weapon types

Terrain can be altered dynamically (burned, frozen, electrified, eroded)

Fully custom classes with modular abilities
Stats: HP, Core 6, Morale, Action Points (AP), Movement
Capacity System: manages relationships, burdens, studies, injuries
Creature Types (humanoid, beast, undead, elemental) modify interactions
Skills blend physical, magical, social, and environmental manipulation
Units have equipment and can use items in-world (toss oil, deploy cover, set traps)
... Which is to say that items and a unit's class grant skills
Example Skills:

    Luna / Pelta / Moon (barrier spells with interactions)
    Halfsword -iIgnore defense
    Mantra - self-buff shaped by the user’s personal beliefs

Maps designed for interactivity and synergy-based play
Multiple elevation levels, destructible environments
Abstractification zones: areas where the world becomes less real, changing interaction rules
Zones affect:

    Spell behavior
    Morale
    Effects intensifying / diminishing

Example regions:

    Circus Wilds: plastic, rubber, and slime-filled zones with abnormal movement
    Underground Hollow: dark, echoing caves where sound-based spells are amplified
