if (hp <= 0) {
	repeat(4){
			var inst = instance_create_layer(oBoulder.x, oBoulder.y, "Instances", oItem);
			with(inst)
			{
				item_num = 16;
				x_frame = item_num mod (spr_width/cell_size);
				y_frame = item_num div (spr_width/cell_size);
			}	
		}
		instance_destroy();
}