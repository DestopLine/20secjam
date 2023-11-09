debug = false;
freecam = false;
camera = new Camera(0, 0, 0); // This will create a camera from view 0 and place it at position (0, 0)

camera.follow(self); // This will make the camera follow the player.
camera.limit(undefined,undefined,undefined,undefined) // This will limit the camera movement to the room.
camera.setMoveType(cm_lerp,0.5)