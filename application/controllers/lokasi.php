<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Lokasi extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->_cek_login();
	}
	private function _cek_login()
	{
		if(!$this->session->userdata('useradmin')){            
			redirect(base_url().'backend');
		}
	}
	
	public function index()
	{
		$data = array(
			'nama' => $this->session->userdata('nama'),	
			'status' => 'baru',
			'lokasi' => '',
			'id_lokasi' => '',
			'tgl_input_lokasi' => '',
			'data_lokasi' => $this->model->GetLokasi("order by id_lokasi desc")->result_array(),
		);

		$this->load->view('lokasi/data_lokasi', $data);
	}

	function editlokasi($kode = 0){		
		$tampung = $this->model->GetLokasi("where id_lokasi = '$kode'")->result_array();
		$data = array(
			'nama' => $this->session->userdata('nama'),	
			'status' => 'lama',
			'tgl_input_lokasi' => $tampung[0]['tgl_input_lokasi'],
			'lokasi' => $tampung[0]['lokasi'],
			'id_lokasi' => $tampung[0]['id_lokasi'],
			'data_lokasi' => $this->model->GetLokasi("where id_lokasi != '$kode' order by id_lokasi desc")->result_array()
			);
		$this->load->view('lokasi/data_lokasi', $data);
	}

	function savedata(){
		if($_POST){
			$status = $_POST['status'];
			$id_lokasi = $_POST['id_lokasi'];
			$lokasi = $_POST['lokasi'];
			$tgl_input_lokasi = $_POST['tgl_input_lokasi'];
			if($status == "baru"){
				$data = array(
					'id_lokasi' => $id_lokasi,
					'lokasi' => $lokasi,
					'tgl_input_lokasi' => date("Y-m-d H:i:s"),
					);
				$result = $this->model->Simpan('tb_lokasi', $data);
				if($result == 1){
					$this->session->set_flashdata("sukses", "<div class='alert alert-success'><strong>Simpan data BERHASIL dilakukan</strong></div>");
					header('location:'.base_url().'lokasi');
				}else{
					$this->session->set_flashdata("alert", "<div class='alert alert-danger'><strong>Simpan data GAGAL di lakukan</strong></div>");
					header('location:'.base_url().'lokasi');
				}
			}else{
				$data = array(
					'lokasi' => $lokasi
					);
				$result = $this->model->Update('tb_lokasi', $data, array('id_lokasi' => $id_lokasi));
				if($result == 1){
					$this->session->set_flashdata("sukses", "<div class='alert alert-success'><strong>Update data BERHASIL dilakukan</strong></div>");
					header('location:'.base_url().'lokasi');
				}else{
					$this->session->set_flashdata("alert", "<div class='alert alert-danger'><strong>Update data GAGAL di lakukan</strong></div>");
					header('location:'.base_url().'lokasi');
				}
			}
		}else{
			echo('handak baapa nyawa tong!!!');
		}
	}

	function hapuslokasi($kode = 1){
		
		$result = $this->model->Hapus('tb_lokasi', array('id_lokasi' => $kode));
		if($result == 1){
			$this->session->set_flashdata("sukses", "<div class='alert alert-success'><strong>Hapus data BERHASIL dilakukan</strong></div>");
			header('location:'.base_url().'lokasi');
		}else{
			$this->session->set_flashdata("alert", "<div class='alert alert-danger'><strong>Hapus data GAGAL di lakukan</strong></div>");
			header('location:'.base_url().'lokasi');
		}
	}
}

// Developed by Muhammad Ridho
// Email: kenduanything23@gmail.com
/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */