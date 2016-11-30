<?php
class ModelCatalogSize extends Model {

	public function getSizes($sizes_id) {
		if(is_array($sizes_id) AND count($sizes_id) > 0){
			$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "size
									WHERE size_id IN (".implode(',',$sizes_id).")");
		}else{
			$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "size
									WHERE size_id = '".(int)$sizes_id."'");
		}
		
		return $query->rows;
	}

}