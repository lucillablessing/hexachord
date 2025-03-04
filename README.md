# hexachord

this is hexachord, a simple program I made to generate the [music video](https://www.youtube.com/watch?v=zmWgaabiKHw) for my piece [Hexachord Fantasia](https://lucilla.bandcamp.com/album/hexachord-fantasia). here is its tiny source code, made public almost a year after the release of *Hexachord Fantasia* itself.

## Modes

running the program causes it to do different things depending on the value of the `mode` global variable (set in `main.lua`).

* `mode = 0` causes the M section of Hexachord Fantasia to start playing.
* `mode = 1` displays the sliding score that accompanies the first four sections of Hexachord Fantasia.
* `mode = 2` displays the "Composed, ... by Lucilla Blessing" screen at the end of the video.
* `mode = 3` displays the lattice of notes seen near the end of the video.
* `mode = 4` displays the animation seen at the beginning of the video, where the letters of "Lucilla's L-T-S-A-M Hexachord Fantasia" rearrange themselves to form "ut re mi fa sol la".

## Usage

* in `mode = 0`, simply repeatedly press space to advance to the next "event" (usually the next note or combination of simultaneous notes).
* in `mode = 1`, clicking causes the sliding score to start scrolling, and you can move the mouse left or right to adjust the scrolling speed. Press space to start playing an ogg of Hexachord Fantasia.
* in `mode = 4`, press space to make the letters start rearranging themselves.

modes 2 and 3 are static.

## Credits

hexachord was made in [LÖVE 11.5](https://love2d.org/). follow [this page](https://love2d.org/wiki/Game_Distribution) to build it directly from its source code.

hexachord's source code is released under the [Unlicense](https://choosealicense.com/licenses/unlicense/), which means it's in the public domain.
