/// @description Insert description here
// You can write your code in this editor
if instance_exists(loopend){
	if loopend.order > order+1{
		for (var i = order+1; i < loopend.order;i++){
			if i < array_length(objBlockCode.blocks){
				if instance_exists(objBlockCode.blocks[i]){
					if objBlockCode.blocks[i] != loopend and objBlockCode.blocks[i] != id{
						if !array_contains(objBlockCode.blocks[i].c_objects,id){
							array_push(objBlockCode.blocks[i].c_objects,id)
						}
					}
				}
			}
		}
	}
}