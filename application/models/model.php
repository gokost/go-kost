<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Model extends CI_Model {

	public $variable;

	public function __construct()
	{
		parent::__construct();
		
	}

	//ambil data user
	function GetUser($data) {
        $query = $this->db->get_where('tb_login', $data);
        return $query;
    }

	//ambil data tabel kategori
	public function GetKat($where= "")
	{
		$data = $this->db->query('select * from tb_kategori '.$where);
		return $data;
	}

	//ambil data tabel lokasi
	public function GetLokasi($where= "")
	{
		$data = $this->db->query('select * from tb_lokasi '.$where);
		return $data;
	}

	//ambil data tabel produk
	public function GetProduk($where= "")
	{
		$data = $this->db->query('select * from tb_produk '.$where);
		return $data;
	}

	public function GetTotProduk()
	{
		$data = $this->db->query('select * from tb_produk group by id_kat ');
		return $data;
	}

	public function GetDetailProduk($where = ""){
		return $this->db->query("select tb_lokasi.lokasi, tb_kategori.kategori, tb_produk.* from tb_produk inner join tb_lokasi on tb_lokasi.id_lokasi=tb_produk.id_lokasi inner join tb_kategori on tb_kategori.id_kat=tb_produk.id_kat $where;");
	}

	public function count_all() {
		return $this->db->count_all('tb_produk');
	}

	//ambil data dari 3 tabel
	public function GetProdukKatLokasio($where= "") {
    $data = $this->db->query('SELECT p.*, q.kategori, c.lokasi
                                FROM tb_produk p
                                LEFT JOIN tb_kategori q
                                ON(p.id_kat = q.id_kat)
                                LEFT JOIN tb_lokasi c
                                ON(p.id_lokasi = c.id_lokasi)'.$where);
    return $data;
    }

	//batas crud data
	public function Simpan($table, $data){
		return $this->db->insert($table, $data);
	}

	public function Update($table,$data,$where){
		return $this->db->update($table,$data,$where);
	}

	public function Hapus($table,$where){
		return $this->db->delete($table,$where);
	}

	function UpdateProduk($data){
        $this->db->where('id_produk',$data['id_produk']);
        $this->db->update('tb_produk',$data);
    }
	//batas crud data

    //model untuk visitor/pengunjung
    function GetVisitor($where = ""){
		return $this->db->query("select * from tb_visitor $where");		
	}

	function GetProductView(){
		return $this->db->query("select sum(counter) as totalview from tb_produk where status = 'publish'");
	}
	//batas query pengunjung

	public function GetKate($where= "")
	{
		$data = $this->db->query('select count(*) as totalkategori from tb_kategori '.$where);
		return $data;
	}

	function TotalKat(){
		return $this->db->query("select count(*) as totalkategori from tb_produk group by id_kat; ");
	}
}

/* End of file model.php */
/* Location: ./application/models/model.php */