<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class BarangModel extends CI_Model {

    private $table = 'tbl_barang';

    public function getDataBarang()
    {
        $this->db->select('');
        $this->db->from('tbl_pengguna tp');
        $this->db->join('tbl_departemen td', 'tp.id_dep = td.id_dep', 'inner');
        $this->db->join('tbl_barang tb', 'tb.id_brg = tp.id_brg', 'inner');
        $query = $this->db->get()->result();

        return $query;
    }
}
