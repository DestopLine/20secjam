debug = false;
/*
stanncam_init(RES_W,RES_H,RES_W,RES_H);
global.cam1 = new stanncam(x,y,RES_W,RES_H);
global.cam1.follow = self; //makes the camera follow itself, for more control over it
global.cam1.room_constrain = false;
*/
camera = new Camera(0, 0, 0); // This will create a camera from view 0 and place it at position (0, 0)

camera.follow(self); // This will make the camera follow the player.
camera.limit(0,0,room_width,room_height) // This will limit the camera movement to the room.

