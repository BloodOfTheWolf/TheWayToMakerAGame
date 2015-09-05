if (obj_player_placeholder.x < obj_gazebo.x)
        {
        image_index = 16-((distance_to_point(obj_player_placeholder.x,y))/33.75)
            if (image_index <=0)
            {
                image_index = 0
            }
        }

if (obj_player_placeholder.x > obj_gazebo.x)
        {
        image_index = 16+((distance_to_point(obj_player_placeholder.x,y))/33.75)
            if (image_index >=31)
            {
                image_index=31
            }
        }