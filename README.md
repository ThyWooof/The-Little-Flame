# The Little Flame

## One-Page Game Design Document

### High Concept

*The Little Flame* is a short, cozy survivors-like about a tiny flame trying to make it through the night. Its light keeps the forest slimes awake, so they swarm the flame to put it out. The player dodges the horde and survives until sunrise.

### Genre, Engine, and Platforms

**Genre:** 2D action-survival game; survivors-like  
**Engine:** Godot 4.7.2, using GDScript  
**Platforms:** Mobile first, with Web support.  
**Controls:** One-thumb virtual joystick on Portrait Mobile; WASD on Landscape Web.

### Core Gameplay

The flame moves through a single forest while its light automatically damages nearby slimes, evaporating them. The player focuses on movement, positioning, and survival.

Slime contact damages the flame. After each hit, the flame becomes smaller and dimmer, reducing its light and attack range while keeping its damage the same. The flame can take roughly three to four hits before being extinguished. Brief invulnerability after a hit prevents damage from applying continuously; its duration will be tuned during development.

Wood chunks restore health immediately when collected and trigger a small healing effect. Some chunks are scattered through the forest, while defeated slimes may drop more. Chasing a drop at low health creates a risk-and-reward choice.

The horde grows more threatening during the five-minute run. Its maximum slime population rises over time; a possible tuning range is 20 to 50 slimes, but these numbers are not final. The planned course version includes melee and ranged slime types.

### Run Structure and Outcomes

1. A short sunset cutscene shows night falling and the slimes waking.
2. The player survives in the forest for five minutes, collecting wood and avoiding slimes.
3. If the flame is extinguished, a Game Over screen shows the survival time and offers an instant retry or return to the main menu.
4. If the flame survives until sunrise, a short comic-like cutscene shows the sun rising and the slimes leaving.

The complete course-project version includes a main menu, pause menu, and simple settings with music and sound-effect volume sliders. A language selector for languages supported by the developer may be added.

### World, Visuals, and Audio

The game takes place in one cozy forest. Its visual style is cute pixel art, using the existing flame and slime sprites and forest tileset. Music and sound effects will support the cozy mood, with additional assets sourced online.

### Scope and Development Purpose

The course-project goal is a complete, presentable game with one playable character, one forest, two slime behaviors, a five-minute run, and the menus and cutscenes described above. Runs are standalone, with no upgrades or persistent progression planned for this version. Seasonal forests or additional content may be considered for future updates.

This project is also a learning resource. Its repository will document the development journey, including common problems and lessons learned, to encourage people who aspire to make games.

### Prototype Status

Player movement and the virtual joystick are set up. Slimes currently spawn on a 0.4-second timer. Health, wood healing, menus, cutscenes, and the complete five-minute run are planned work.
