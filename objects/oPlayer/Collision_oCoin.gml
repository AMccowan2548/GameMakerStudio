//when I collide with oCoin destroy coin and boost points and coin count
instance_destroy(other);
global.coins +=1;
global.points +=100;

if (!instance_exists(oCoin) && !instance_exists(oCoin)) 
{
    room_goto_next();
}