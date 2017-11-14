# Raycasting

![Raycasting](https://media.giphy.com/media/3o6nUUz4FYKUdLbjfq/giphy.gif)

This is a simple 3D raycasting data pack with the following features:
 * Both instant rays and dynamic rays
 * Fast computations, I had no lag when running this each tick
 * Uses a Sine loop-up table, can find sine to 4 decimal places using an angle (in degrees) with 1 decimal place
 * Almost pinpoint accurate
 
 To use, run /function raycast:start to initialize the function, then use /function raycast:spawn_instant_ray or /function raycast:spawn_dynamic_ray at the entity from which you want to raycast.
 
 Feel free to use this in your own data pack, either out of the box or modified.
