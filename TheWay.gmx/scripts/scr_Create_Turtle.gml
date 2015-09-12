///////SPEED///////
accelSpeed = 1  // Rate of horizontal acceleration (Higher is faster, should be > .2)
decelSpeed = .75  // Percent of horizontal friction (Lower is faster, should be <= .92)
moveSpeed = 9 // Max horizontal speed

isSlowed = false // true when walking in water/mud/etc
curSpeed  = moveSpeed  // Current max horizontal speed. Equals moveSpeed unless isSlowed = true

jumpSpeed = 10  // figure it out dipshit
wallSpeed = 10 // vertical speed from a wall jump
//maxJumpSpeed = 12.5 // maximum upward velocity. Currently unused

///////GRAVITY & COLLISION///////
hsp = 0
vsp = 0
dir = 0
grav = 0.7
onGround = false
onWall = false

Player = obj_player_placeholder
Wall = obj_ground_placeholder//The name of the wall object parent the player will collide with
closestWallID = 0;
closestWallDistance = 1000;

///////WALL JUMPING///////
canWallJump = false
afterWallJump = false // The brief input blocker after a player wall jumps; it makes controls smoother
TminusAfterWallJump = 5 // duration of the input blocker
prevWallJump = 0 // the direction the player just jumped from (so they can't jump from the same wall twice in a row like in Super Meat Boy)
multiWallJump = 3 // max amount of times player can wall jump
curWallJump = multiWallJump // current amount of times player has wall jumped