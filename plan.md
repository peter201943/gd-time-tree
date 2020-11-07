

# WARNING
- this is a super WIP document, do not read it verbatim
- these are Peter's various thoughts, taken from YAML and converted to Markdown





# Features:


## Generic Scene Saving and Loading:


## Scene Relationships:
- Parents
- Children


## Procedural UI Generation:

### Node Distance:
- use a circle

### Node Direction:
- use a vector

### Node Redraws:
- Add/Remove Nodes

### Node Color:
- Choose from palette?
- rand?
  
### Node Paths:
- line segments

### Node Highlights:
- Show selection


## Navigation:
- zoom in/out
- panning
- pointing/indicating
- juicy movement


## Juice:
- laggy camera/bounce/sway/drift
- every movement tweened
- visual starfield/reactive background/parallax
- light up paths


## Effects:
- arrange scene screenshots along path
- zoom in/out of scene screenshots on load/escape


## Sound/Music:
- System Shock 2 Command 3
- Natural Selection Ambient
- System Shock Cyberspace Arranged




# Saving Techniques:
  

## Differences:
- saving entire scene change after change?
- saving actions taken in scene? (Logical/JSON)


## Snapshots:
- save entire scene?
- save logical state (Logical/JSON)?


## Master Saves:
- Use Logical Saves (Logical/JSON) with Master Save (Scene)
- Apply logical state to master scene




# Architecture of Time Tree:
  
  
## Recursion:
- Time Trees within Time Tree?
- Maybe not great idea
- do save-scenes then have their own time-trees?




# Crazy Ideas:


## Move View not Player:
- we are *choosing* where to go first
- then we have the player move along the path to do so
- or force player to move up/down tree to get to target location
- or "bind" player to the "track"
- make them have to move to where they want to go
- or maybe limit how far they can look


## Alter Music:
- moving forward in time: play normally
- moving backward in time: play backward
- stopped: silence/slow
- see this:
  - title:  Added pitch scale property to AudioStreamPlayer, AudioStreamPlayer2D and AudioStreamPlayer3D
    url:    https://github.com/godotengine/godot/pull/15254
  - title:  Sound FX and Music -- Godot 3 Tutorial Series
    url:    https://www.youtube.com/watch?v=S-8IcHucSNg


## Tweened Camera and Player:
```yaml
- title:      Godot Tween Tutorial
  url:        https://www.youtube.com/watch?v=pFR4DCUeNHo
  status:     INC
  relevance:  unk

- title:      Improved Movement In Godot With Tween Nodes
  url:        https://www.youtube.com/watch?v=DvOe-RlomD0
  status:     INC
  relevance:  HIGH

- title:      "Godot Game Juice Tutorial 1: Camera Shake and Frame Freeze"
  url:        https://www.youtube.com/watch?v=AobjNjzZhmo
  status:     INC
  relevance:  HIGH

- title:      How to Improve Your Camera for Platformers in Godot 3.1
  url:        https://www.youtube.com/watch?v=sxtC7hj2ABY
  status:     INC
  relevance:  HIGH

- title:      How to Make Juicy Camera Shake in Godot with OpenSimplexNoise
  url:        https://www.youtube.com/watch?v=i2A5diEmX6w
  status:     INC
  relevance:  HIGH

- title:      "Godot Game Juice Tutorial 2: Tweening and Particles"
  url:        https://www.youtube.com/watch?v=-MQHFcHegOk
  status:     INC
  relevance:  HIGH
```





# Questions:


## How Should things be saved?:
  
### Per Scene?:
- each scene remembers its children and its parents

### Per Graph?:
- Graph of all scenes is saved


## What should be saved?:
- Scene Files?
- Resource Files?
- Custom JSON?


## How should we reference?:
  
### Folder-Names:
- Where to find the tree
- unnecessary

### File-Names:
- Where to find in the folder
- use this
- assumes root name

### Scene-Names:

### Root-Names:
- Name of Root Object to target and load



# Notes:


## Godot Videos:
```yaml
- title:  Experiments with Procedural Graphics in Godot
  url:    https://www.youtube.com/watch?v=KB9jHh2qKlc
  status: NONE
  notes:  [FX]

- title:  How to make better games using Curves in Godot | Game Dev Tutorial 6
  url:    https://www.youtube.com/watch?v=gHT3jsCEiyA
  status: NONE
  notes:  [JUICE]

- title:  "Platform movement in Godot: RigidBody2D vs KinematicBody2D tutorial"
  url:    https://www.youtube.com/watch?v=pnBioV2HkS8
  status: NONE
  notes:  [MOVE]

- title:  How I Implemented A Railway System in Godot
  url:    https://www.youtube.com/watch?v=co2CON-WPPQ
  status: NONE
  notes:  [MOVE]

- title:  How to switch scene using door (portal)? Godot 3 tutorial
  url:    https://www.youtube.com/watch?v=AxymjihpUi4
  status: NONE
  notes:  [SAVE, LOAD]

- title:  How to use light2d to hide a character in shadow because it's ugly. Godot lighting 2d tutorial
  url:    https://www.youtube.com/watch?v=mMFtS6GnLF4&list=PLcgIj8qYyWnEuQUsIu3oP4Ilxbn1ABDHm&index=6
  status: NONE
  notes:  [FX]
```
  

## Rails Movement:
- Dont use path2d
- Use coordinates
- Use agent
- Capture player inout
- Store as intentional vector
- Compare vector to possible directions
- Move towards available targets
- Scenes saves as targets
- Available targets from possible states and originating state


## Drawing:
- Dont use canvas
- Use StaticBody2D
- Use Circle Radius
- Use Direction Vector
- Use Random Color


## Movement:
- Space (Hold): Start Time Travel (Zoom In)
- Enter (Hold): Choose Target (Zoom In)
- Wasd: Pan/Direction


## Choosing Direction:
- Have Circle Radius around every target
- While in radius, set direction out
- Play loose with player effect


## Lighting along path:
- Make it spooky


## Time Travel Music:
- think Cyberspace from System Shock
- Esp. with the new System Shock Selected Midi
- Maybe slowed down and quieted System Shock 2 tracks?:
  - System Shock 2 Operations deck (slow): https://www.youtube.com/watch?v=-ebbabJBALw
- I envision a dark, dark, dark place
- that the place without space
- and lines without times
- is but cold, shimmering, glittering darkness
- against the bright lines of time
- but exiting those lines
- one shatters the lines, slight
- and pollutes the silence with noise
- the cold, haunting, echoing tune of time
- a clock, grind
- an overwhelming mechanic grind, assured, calm, absolute
- themes:
  - System Shock 2 - Command 3 (Remaster): https://www.youtube.com/watch?v=mFTeyFo07q0
  - too techno
  - System Shock 2 OST - Command 3: https://www.youtube.com/watch?v=YcaQaoqJ5vs
  - the original. much better.
  - hurts to listen to slowed down
  - some really heavy distortion. shame.


## System Shock Minigames:
- Note these are needed to open doors/deactivate traps, etc
  

## System Shock Life System:
- Saves/Load, Restore Stations
- can become corrupted


## Certain Music Video:
- See Video/Time as 3D shape unfolding


## Train Tracks:
- "godot roller coaster"
- because we will be moving *along* the tree...
- anything with "tracks"
- "move along path"
- "path follower"
- "unity train game"


## Proc Gen:
```yaml
- title:  "Procedural Generation in Godot - Part 7: Dungeons (part 2)"
  url:    http://kidscancode.org/blog/2018/12/godot3_procgen7/
  status: INC

- title:  "Procedural Generation in Godot - Part 2: Using Mazes"
  url:    https://kidscancode.org/blog/2018/09/godot3_procgen2/
  status: INC

- title:  Fractal Trees - L-System
  url:    https://www.reddit.com/r/godot/comments/8t7jo1/fractal_trees_lsystem/
  status: INC

- title:  Godot-L-System-Fractal-Trees
  url:    https://github.com/tofoz/Godot-L-System-Fractal-Trees
  status: INC

- title:  "Code that: L-System"
  url:    https://www.youtube.com/watch?v=eY9XkJERiG0
  status: INC

- title:  forest
  url:    https://github.com/Terkwood/forest
  status: INC

- title:  Making trees
  url:    https://docs.godotengine.org/en/stable/tutorials/content/making_trees.html
  status: INC

- title:  L System Example
  url:    https://roelofgielen.com/portfolio/l-system/
  status: INC

- title:  
  url:    https://jsantell.com/l-systems/
  status: INC

- title:  
  url:    https://www.reddit.com/r/godot/comments/hvy1cr/procedural_tree_generation_using_lsystems/
  status: INC

- title:  
  url:    https://github.com/topics/lindenmayer-systems
  status: INC

- title:  
  url:    https://github.com/dilmerv/UnityLSystemEssentials
  status: INC
```



# Game Design:
```yaml
- title:  The Fidget Factor | Yahtzee's Dev Diary | S2 EP 10
  url:    https://www.youtube.com/watch?v=mk_rHekhJaI
  status: watched
  type:   [game-dev, talk]
  policy: public
  notes:
  - Very useful, how to make travel actual, and not just "a thing that happens"
  - make it more involved
  - compare to time travel?
  - make analogy of time-travel = space-travel
  - note use of small mechanics to reinforce major mechanics

- title:  "Ross's Game Dungeon: Clans"
  url:    https://www.youtube.com/watch?v=QHYH0jFMWSY
  status: watched
  type:   [game, review]
  policy: public
  notes:
  - Excellent breakdown of a bad game
  - Pass on to Cosmic Engine
  - talk about grind, time travel and differentiating from Save Scumming
  - Talk about adding Quality of Life enhancements to make the game better between saves
  - (Essentially, pursue a Prey (2017) style of saves, that arent total)
  - ((Idea is, some stuff saved separately, allow avoiding repeated content))
```







# misc:
```yaml
- title:  Arrow Symbols
  url:    https://unicode-table.com/en/sets/arrow-symbols/
  notes:
  - handy for documentation purposes

- title:  GDScript exports
  url:    https://docs.godotengine.org/en/stable/getting_started/scripting/gdscript/gdscript_exports.html
  notes:
  - use these!!!!!

- title:  List of export hints
  url:    https://godotengine.org/qa/6099/list-of-export-hints

- title:  How to raise an error with a message?
  url:    https://godotengine.org/qa/29525/how-to-raise-an-error-with-a-message
  notes:
  - push_error("message")
  - push_warning("message")
  - assert(condition, "message")

- title:  Git Overwrite master with branch
  url:    https://stackoverflow.com/questions/30105210/git-overwrite-master-with-branch

- title:    My character and toon shader are now starting to come along! (more details in comments)
  url:      https://www.reddit.com/r/godot/comments/jpkcox/my_character_and_toon_shader_are_now_starting_to/
  status:   INC
  notes:
  - its a guide, complete with code and shader-graph

- title:    Keeping my objective of using godot as an art framework
  url:      https://www.reddit.com/r/godot/comments/jpf3zj/keeping_my_objective_of_using_godot_as_an_art/
  notes:
  - use this for drawing the time-tree!
  - it looks pretty!

- title:    How to properly navigate Godots Scene tree programmatically
  url:      https://www.reddit.com/r/godot/comments/bwe5i4/how_to_properly_navigate_godots_scene_tree/
  notes:
  - handy for others, esp non-coders as to why some things arent working
```





# chrono elements:
  
  
## chrono-trigger:
- listens for whether the user wants to go to the tree or not
- isolates it from any other interface


## chrono-tree:
- displays all connected scenes
- can go to a particular scene from here


## chrono-logger:
- saves the scene as the user plays through it
- also holds scene relationship info
- assumes we are saving a new scene EACH TIME
- should have some sort of ACTIONS which it TRACKS
- or else actions which need to be recorded should EMIT a SIGNAL
- for clarity's sake, probably best to keep this separate from chrono-trigger


## question:
- will trigger and logger ever be exculsive?
- or must one always be with the other?
- it may be better to just comine them into one object






# saving:


## scenes:
- currently my "test.tscn" has 9,900 characters and is 10 KB in size
- an average scene might be... 50 KB at smallest
- thats 20 saves per 1 MB
- we are looking at A LOT of saves... say 300
- 300 * 50 = 15 MB of storage
- alternatively, we could try using some LOGICAL representation of the game state
- such as a TRES
- or objects could self-report what is important


## connections:
- we could have some master file of all the connections between scenes
- each scene could have some object to represent its children
- or its parent
- but this requires the chrono-tree to open EACH SAVE to build the full tree
- this could take a long time!
- is better if chrono-tree keeps track of relationships
- it should get updated each time a new scene is created


## resources:
```yaml
- title:    "Godot: How to save Game Progress in a Single Resource File"
  url:      https://www.youtube.com/watch?v=ldKFOGRQDzo
  status:   done
  notes:
  - bad idea to tie saving to scene itself
  - better to put in a command node
  - tres file small, good
  - res even smaller

- title:    "Godot Save Game Tutorial: Save and load using Resources"
  url:      https://www.youtube.com/watch?v=ML-hiNytIqE
  status:   INC
  notes:
  - MUCH better infrastructure + example of how to save things
  - this creates a special object with Inspector interface to actually do things

- title:    How to Save a scene at run time ?
  url:      https://godotengine.org/qa/903/how-to-save-a-scene-at-run-time
  status:   done
  notes:
  - VERY GOOD, README!

- title:    What are diffrence between .scn and .tsn !? Which one is better !?
  url:      https://godotengine.org/qa/5447/what-are-diffrence-between-scn-and-tsn-which-one-is-better
  status:   done
  notes:
  - tscn versus scn
  - try scn at some point....
  - scn is COMPRESSED tscn
  - stored as BINARY, and not TEXT (t="text" in tscn)
```


## tres or tscn:
- choose tscn
- why?
- because regardless of whatever format we use, mindfulness is absolutely required
- tres simply requires the creator to explicitly state what they want saved and how they want to save/load it
- tscn however handles this automatically, and includes everything
- use of tscn requires careful thought!
- must turn everything into a prefab and store elsewhere as much as possible
- what our tscn in particular is describing is the LAYOUT and VALUES of entities
- even a TRES does the exact same thing
- but! TSCN opens natively in the editor, ready to go
- so you just need to be SMART about how you use it.
- also, maybe some function that can detect if an asset stays together/does not change would be useful
- so it can automatically export things to prefabs, and simply reference them, rather than constantly copying them
- obviously, making significant changes to a prefab can be costly
- also important to track dependencies between auto-generated prefabs....
- hnnnnggggg
- ok, maybe not worth the effort
- BUT! If we limit the users ability to significantly alter prefabs, we should be fine
- also define these prefabs sooner, and elminate any native resources to the scene


## our test case:
- just needs to know 3 things
- black ball position:  Vector3
- white ball position:  Vector3
- who's turn it is:     NodePath







# saving connections:


## scene:
- saves stuff inside itself
- save to a hash (probably just an integer)


## tree:
- builds a complete map of all connections
- must update/add/remove these
- must build ui from these
- this can be a singleton, always running in the background
- then when chrono-tree is called, we build it from this
- other advantage is its just FileRefs and NodePaths
- so small Scene to save as result
- ACTUALLY!
- we dont need NodePath!
- we just need to add things as children!
- which means the logger in each scene needs to know:
  - where to save scene (easy)
  - update the time-tree relationships (instantiate new "Save", set "File" to our save, add as child to last save)


## resources:

- (2020-11-03T15:41:00: This is where I last left off)
- (Finish Watching this (03:11): https://www.youtube.com/watch?v=AxymjihpUi4)
- (Finish Reading this: https://www.youtube.com/results?search_query=godot+singleton)

```yaml
- title:  Change scenes manually
  url:    https://docs.godotengine.org/en/stable/tutorials/misc/change_scenes_manually.html
  status: INC
  notes:

- title:  "Godot Beginner Tutorial 12: Singleton"
  url:    https://www.youtube.com/watch?v=yLbqimzD94A
  status: INC
  notes:

- title:  5 Ways to Split or Break GIF Animation Into Individual Frames
  url:    https://www.raymond.cc/blog/split-or-break-gif-animation-into-individual-frames/
  status: done
  notes:
  - check the ffmpeg instructions
  - very useful
```




# tracking change:


## two major ways of tracking changes:
- 1: Save everything each time
- 2: Save only the things that change each time


## Tracking Everything:
- Emphasis on storing references to things
- Emphasis on making save as small as possible


## Tracking Changes:
- ADD, REMOVE, CHANGE
- this requires us to do a fair bit of engineering within godot, to incrementally edit a scene
- but is far more powerful and generic then using custom full-save TRES's
- why?
- because we dont need to specify it for ecery single new feature we add
- this automatically supports whatever we add
- we also dont need to worry about the scene appearing particularly cluttered with native assets




# next big idea:


## parts:

### users:
- have a SAVES folder
- have USER folders within this folder
- each USER is a single playthrough
- each USER folder has SAVE files (0.tscn - n.tscn)
- each USER folder has one TREE file (tree.tscn)
- the TREE stores relationships between SAVEs
- this allows per-user ease of management

### ontology:
- save relation of this save with other saves in a separate file
- this is called a TREE
- why 1 file:
  - if save ontology in EACH SAVE, will require opening and loading
  - HUNDREDS of saves
  - EACH TIME the time-tree needs to be loaded
  - also makes it harder to modify the ontology if distributed across all these files

### contents:
- each SAVE is either a TRES or a TSCN
- each SAVE has 3 CATEGORIES:
    ADD:  When something new is instantiated into the scene (add this)
    DROP: When something is removed from the scene (drop this)
    SUB:  When something changes in the scene (substitute this for this)
- if TRES:
  - does not allow opening natively, will require separate saver/loader
  - still better than plain JSON (can save native stuff without much boilerplate)
- if TSCN:
  - allows opening the save file in editor natively
  - will appear as 3 NODES: [add, drop, sub]
  - each NODE will have instance of referenced SCENE-NODE with applied changes (if SUB)

### naming:
- each SAVE is given an INTEGER name
- this name is INCREMENTED per SAVE
- the last known SAVE's NAME is saved in the TREE file
- (allows ease of adding new saves, as do not need to inspect directory for highest save number)

### applying and removing changes:
- will be most sophisticated part of this
- need some mechanism that creates scenes from script
- can add/remove stuff from reading a TSCN


## implementation:

### scene saving:
- avoid singletons where possible
- instead, have chrono-logger in scene
- chrono-logger notices changes to components it is told to watch for (maybe?)
- or maybe it notices everything
- when make new save, have chrono-logger open tree.tscn and add the new save with child ref's

### ontology representation:
- if TSCN, can represent as NODEs within NODES
- where each NODE is a SAVE
- where the NAME of each NODE is an INTEGER (corresponds with name of SAVE file)
- where the CHILDREN of each NODE are the CHILDREN of each SAVE (branch)
- now, we can either store a REFERENCE to each save FILE from each NODE
- or, we can make part of the time-tree loader a file-fetcher and handler

  
## new names:
  
### not enough to have all these "trees":
- **`chrono-tree`**: the SPACE a player navigates around in
- **`tree.tscn`**:   the ONTOLOGY of saves a user makes
- **`*save.tscn`**:  the COLLECTION of saves that populate a time-tree

### from here on out, use these terms:
- chrono-space
- chrono-tree
- chrono-save

### YAML
```yaml
chrono-space:
  type:     scene
  purpose:  PLAY
  relationships:
  - LOADS: chrono-tree
  - USED-BY: player
  description:
  - the procedurally-generated user-interface to the structure of saves
  - player moves around on rails in here
  - various time-effects, gameplay happens
  elements:
    canvas: Cool background for player to move across
    player: a cursor the player moves around the canvas
    nodes:
    - each save file is drawn as one of these
    - player can "enter" or "exit" these
    paths:
    - generated and drawn between nodes
    - player moves along these
    - this is where primary gameplay in this scene resides

chrono-tree:
  type:     SCENE
  purpose:  DATA
  relationships:
  - USED-BY: chrono-space
  - TRACKS: chrono-saves
  - PLAYER: creates this through battle-gameplay
  description:
  elements:
    last-id:  INTEGER of last save game (what to use as NEXT save NAME)
    tree:     NODE-TREE of saves and their relationships

chrono-save:
  type:     SCENE
  purpose:  DATA
  relationships:
  - USED-BY: chrono-tree
  description:
  - the differences between battle-scene
  elements:
    add:  NEW items to add
    drop: OLD items to remove
    sub:  OLD items to replace, change of mesh, etc
```




# Logging:


## what:
- what if we "logged saves"?
- what would htis look like?
- what already exists?


## search terms:
- unity incremental saves
- godot logging
- godot scene logging
- unity scene logging
- godot save to stream
- unity streaming saves
- godot streaming scenes
- godot log to tscn
- godot log to tres


## questions:
- what does streaming to/from tscn/tres/json look like?
- what has been tried in the past?
- "gron", a regex-like for JSON, converts the json into this:
```py
foo = {}
foo.bar = "baz"
foo.baz = []
foo.baz[0] = 1
```


## refs:
```yaml
- title:    SirDB
  url:      https://github.com/c9fe/sirdb
  status:   INC
  comments: https://news.ycombinator.com/item?id=25004554
  notes:
  - check the HackerNews comments

- title:    Mendoza - The totally non-human readable diff format for structured JSON documents
  url:      https://www.sanity.io/blog/mendoza
  status:   INC
  comments: https://news.ycombinator.com/item?id=24943775
  notes:
  - interesting, turning JSON navigation into a state-machine

- title:    JavaScript Object Notation (JSON) Patch
  url:      https://tools.ietf.org/html/rfc6902
  status:   INC
  notes:
  - seems horribly verbose for some fairly basic operations
```




# scenes not files:


## one scene:
- we could save all saves as separate SCENES within the PLAYER save....
- so, instead of maintaining a directory of separate saves
- just put everything on the same node-tree structure
- copy the battle scene, make this the root node
- OR!


## references:
- have tree.tscn with tree.gd REFERENCE the battle scene and copy it like that!
- (makes an instance on first use of tree/first play)
- in that case...


## combine them?:
- do we want to make the chrono-space the same as the chrono-tree?
- no reason to differentiate them...?
- if we have battle (scene) as reference in tree (node)
- then we should reference time-tree (scene) from the tree (node) as well
- then we can switch between them as we please
- soo....


## separate them:
- better to have separate chrono-tree and chrono-space
- chrono-space generates a UI
- chrono-tree is the data the chrono-space uses to generate a UI


## possible concerns?:
- what is the largest tree we can have inside godot?
- what is the deepest tree we can have in godot?
- https://github.com/godotengine/godot/blob/master/scene/main/node.h
- godot uses the C++ Vector<> for children
- !cpp |
    Vector<Node *> children; // list of children
- these have a max size of 2305843009213693951 elements
- but how *deep* can these go?
- how many nodes-within-nodes are we allowed to have?


