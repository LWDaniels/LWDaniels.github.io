# Lawrence Daniels's portfolio
### Below are a few of my favorite programming projects
### Unfortunately, I can't release most of the source code as many are built with proprietary technology (most belonging to Cornell University) 
### If you want any further information about any of these projects or simply want to chat, email me at lawrencedanielsjr@gmail.com

# Games
## ![catacombs_logo](/assets/catacombs.png){:class="img-responsive" width="30%"}
### My involvement

I am the project lead for this game, though its development wouldn't be possible without my amazing teammates (Allen Chen, Justin Guo, Yanran Li, Joaquin Rivera, Amy Williams, Claire Yun, and Yihan Zhao). In addition to my duties as project lead (i.e., general organizational and managerial tasks), I did a good deal of programming for the project. This project came to be as a game for Cornell's Introduction to Computer Game Architecture course, and I would like to give a big thanks to Walker White and Traci Nathans-Kelley for their insight and advice.

> #### High Concept Statement
> You’re Tabby, an orange street cat who came upon an ancient tomb while roaming the streets of Thebes, but Anubis himself forbade your entry. Don’t let that stop you; venture deep into the catacombs, pouncing on and assuming control over supernatural minions, all while causing chaos and foiling the will of the gods!

#### Genre Details

*Catacombs* is a stealth-strategy game that is heavily inspired by titles like *Hotline Miami* and *Ape Out*, but with a more approachable and jovial twist. Our goal is to keep tactics and strategy at the forefront, yet to keep the game enjoyable for a casual audience.

#### Technical Details

*Catacombs* is coded in Java using the LibGDX engine and will be available on Windows and PC through Steam in Summer 2024.

#### Previews

*Catacombs* will be available for purchase later this year through Steam, and I plan to provide a free demo of the first level that will be linked here later.
For now, here is a level mockup to show some of our assets. I will also be posting gameplay videos and trailers here once they become available.  
![Catacombs_map](/assets/map.png){:class="img-responsive"}

# Computer Graphics
## Cell/Toon shaders

This was for a project for Cornell's Introduction to Computer Graphics course. This was part of a group project, though much of my responsibility for the project was in writing OpenGL shaders to stylize the game assets. I ended up going with a cell/toon shading approach which outlines the characters and quantizes their colors to emulate a cartoonish aesthetic. These are somewhat difficult to notice in the final product, so here are isolated screenshots below using the Stanford Asian Dragon model.  
![cell_shaded_dragon_on_black](/assets/cell_shaded_dragon.png){:class="img-responsive"}
![cell_shaded_dragon_on_white](/assets/cell_shaded_dragon2.png){:class="img-responsive"}

You *can* interact with the actual project on [this page](https://lwdaniels.github.io/4620-final-project/) (if you have trouble with it running, you may want to make sure you have hardware acceleration enabled in your browser), but given that it is primarily a technical prototype, the actual game isn't particularly fun. It is heavily inspired by *Guitar Hero* and you gain points by clicking on the animals right as they hit the rings.  
If you want to instead focus on the cell/toon shading (which I would recommend), you can go to [this page](https://lwdaniels.github.io/cell-shading/). Please fiddle with the sliders as you please. If you want to replicate the look above, start with these parameters:  
![cell_shading_settings](/assets/cell_shading_settings.png){:class="img-responsive" width:"75%"}

If you like shaders and want to look at the ones I wrote for this, you can look [here](https://github.com/LWDaniels/LWDaniels.github.io/tree/main/cell-shading/shaders/cellshader). Please note that this was my first experience writing shaders and there is a lot I would change if I were to revisit this project (both with my actual code and the process of toon/cell shading as a whole).

## Raytracing and Refraction
![raytracing_render](/assets/final_render.png){:class="img-responsive"}

