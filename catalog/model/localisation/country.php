<?php
class ModelLocalisationCountry extends Model {
	public function getCountry($country_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "country WHERE country_id = '" . (int)$country_id . "' AND status = '1'");

		return $query->row;
	}

	public function getCountryOnCode($country_code) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "country WHERE iso_code_2 = '" . $country_code . "' AND status = '1'");

		return $query->row;
	}

	public function getCountries() {
		$country_data = $this->cache->get('country.status');

		if (!$country_data) {
			$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "country WHERE status = '1' ORDER BY name ASC");

			$country_data = $query->rows;

			$this->cache->set('country.status', $country_data);
		}

		return $country_data;
	}
	public function getCountriesForDelivery() {
		$country_data = $this->cache->get('country.status');

		if (!$country_data) {
			$query = $this->db->query("SELECT C.* FROM " . DB_PREFIX . "delivery_to_country C2D
									  LEFT JOIN " . DB_PREFIX . "country C ON C2D.country_id = C.country_id
									  WHERE C2D.status = '1' GROUP BY C.name ORDER BY C.name ASC");

			$country_data = $query->rows;

			$this->cache->set('country.status', $country_data);
		}

		return $country_data;
	}
}