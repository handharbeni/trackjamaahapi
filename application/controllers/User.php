<?php
defined('BASEPATH') OR exit('No direct script access allowed');
require APPPATH . 'libraries/REST_Controller.php';
class User extends REST_Controller {
	/*
		Basis 1 = Error Attribute
		100 = field kurang lengkap
		101 = 

		Basis 2 = Error Database
		200 = Akun sudah terdaftar
		201 = Registrasi Gagal
		202 = Token Tidak Valid

		300 = OK
	*/
	private $responses = array();
	private $code = 404;		
	private $paramspost = null;
	private $table = "m_user";
    function __construct() {
        parent::__construct();       
		$this->code = 300;
		$this->responses['status'] = "Error";
		$this->responses['code'] = $this->code;
        $this->load->model('Gmodel', 'model');
        $this->paramspost = $this->post();
    }
    function index_get(){
    	$this->response("Hello, World");
    }
	function register_post(){
		$this->code = 100;
		$this->responses['status'] = "Field Kurang Lengkap";
		$this->responses['code'] = $this->code;
		$this->table = "m_user";
		if (isset($this->paramspost['nama']) 
			&& isset($this->paramspost['alamat'])
			&& isset($this->paramspost['no_telp']) 
			&& isset($this->paramspost['email'])
			&& isset($this->paramspost['password'])) {
				$dataSelectNotelp['no_telp'] = $this->paramspost['no_telp'];
				$dataSelectNotelp['confirm'] = "N";
				$getDataByNoTelp = $this->model->select($dataSelectNotelp, $this->table);
				if ($getDataByNoTelp->num_rows() > 0) {
					// data sudah ada tinggal update
					// berarti di daftarkan dengan no hp oleh leader
					$idUser = $getDataByNoTelp->row()->id;
					$dataCondition['id'] = $idUser;
					$dataUpdate['nama'] = $this->paramspost['nama'];
					$dataUpdate['email'] = $this->paramspost['email'];
					$dataUpdate['alamat'] = $this->paramspost['alamat'];
					$dataUpdate['password'] = $this->paramspost['password'];
					$dataUpdate['confirm'] = "Y";
					$update = $this->model->update($dataCondition, $dataUpdate, $this->table);
					if ($update) {
						$this->code = 300;
						$this->responses['status'] = "Registrasi Berhasil";
						$this->responses['code'] = $this->code;
					}
				}else{
					// registrasi sendiri
					$this->code = 200;
					$this->responses['status'] = "Akun sudah terdaftar";
					$this->responses['code'] = $this->code;
					$dataSelectNewUser = "(no_telp='".$this->paramspost['no_telp']."' OR email='".$this->paramspost['email']."')";
					$this->table = "m_user";
					$checkNewUser = $this->model->select($dataSelectNewUser, $this->table);
					if ($checkNewUser->num_rows() < 1) {
						$dataInsert['nama'] = $this->paramspost['nama'];
						$dataInsert['email'] = $this->paramspost['email'];
						$dataInsert['no_telp'] = $this->paramspost['no_telp'];
						$checkDuplicate = $this->model->select($dataInsert, $this->table);
						if ($checkDuplicate->num_rows() < 1) {
							$this->code = 201;
							$this->responses['status'] = "Registrasi Gagal";
							$this->responses['code'] = $this->code;
							$dataInsert['alamat'] = $this->paramspost['alamat'];
							$dataInsert['password'] = $this->paramspost['password'];
							$insert = $this->model->insert($dataInsert, $this->table);
							if ($insert) {
								$this->code = 300;
								$this->responses['status'] = "Registrasi Berhasil";
								$this->responses['code'] = $this->code;
							}
						}
					}
				}
		}
		$this->response($this->responses);
	}
	function login_post(){
		$this->code = 100;
		$this->responses['status'] = "Field Kurang Lengkap";
		$this->responses['code'] = $this->code;
		$this->table = "m_user";		
		if (isset($this->paramspost)
			&& isset($this->paramspost['email']) 
			&& isset($this->paramspost['password'])) {
			$this->code = 201;
			$this->responses['status'] = "Login Gagal";
			$this->responses['code'] = $this->code;
			$dataSelect['email'] = $this->paramspost['email'];
			$dataSelect['password'] = $this->paramspost['password'];			
			$selectdata = $this->model->select($dataSelect, $this->table);
			if ($selectdata->num_rows() > 0) {
				$localResponse = array();
				$localResponse['data'] = $selectdata->result_array();
				$localResponse['status'] = "Ok";
				$this->code = 300;
				$this->responses = $localResponse;
				$this->responses['code'] = $this->code;
			}
		}
		$this->response($this->responses);
	}
	function creategrup_post(){
		$this->code = 202;
		$this->responses['status'] = "Token Tidak Valid";
		$this->responses['code'] = $this->code;
		$this->table = "m_user";
		if (isset($this->paramspost['key'])) {
			$dataSelect['key'] = $this->paramspost['key'];
			$dataUser = $this->model->select($dataSelect, $this->table);
			if ($dataUser->num_rows() > 0) {
				$idUser = $dataUser->row()->id;
				$this->code = 100;
				$this->responses['status'] = "Field Kurang Lengkap";
				$this->responses['code'] = $this->code;
				if (isset($this->paramspost['namagrup']) && isset($this->paramspost['masaaktif'])) {
					$this->code = 201;
					$this->responses['status'] = "Gagal Membuat Grup";
					$this->responses['code'] = $this->code;
					$this->table = 'm_grup';
					$dataInsert['nama_grup'] = $this->paramspost['namagrup'];
					$dataInsert['masa_aktif'] = $this->paramspost['masaaktif'];
					$dataInsert['id_user'] = $idUser;
					$insert = $this->model->insert($dataInsert, $this->table);
					if ($insert) {
						$this->code = 300;
						$this->responses['status'] = "Grup Telah Dibuat";
						$this->responses['code'] = $this->code;
					}
				}
			}
		}
		$this->response($this->responses);
	}
	function listgrup_post(){
		$this->code = 202;
		$this->responses['status'] = "Token Tidak Valid";
		$this->responses['code'] = $this->code;
		$this->table = "m_user";
		if (isset($this->paramspost['key'])) {
			$dataSelect['key'] = $this->paramspost['key'];
			$dataUser = $this->model->select($dataSelect, $this->table);
			if ($dataUser->num_rows() > 0) {
				$this->code = 201;
				$this->responses['status'] = "Gagal Mengambil Grup";
				$this->responses['code'] = $this->code;
				$this->table = 'm_grup';
				$dataSelect = array();
				$idUser = $dataUser->row()->id;
				$dataSelect['id_user'] = $idUser;
				/*$dataSelect['deleted'] = "N";*/
				// $getGrup = $this->model->select($dataSelect, $this->table);
				$getGrup = $this->model->rawQuery("select m_grup.* from t_grup
													inner join m_user on m_user.id = t_grup.id_user
													inner join m_grup on m_grup.id = t_grup.id_grup
													where m_user.id = ".$idUser." group by m_grup.id");
				// print_r($this->db->last_query());
				if ($getGrup->num_rows() > 0) {
					$this->code = 300;
					$this->responses['data'] = $getGrup->result_array();
					$this->responses['status'] = "Ok";
					$this->responses['code'] = $this->code;
				}
			}
		}
		$this->response($this->responses);
	}
	function sentchat_post(){
		$this->code = 100;
		$this->responses['status'] = "Field Kurang Lengkap";
		$this->responses['code'] = $this->code;
		$this->table = "m_user";		
		if (isset($this->paramspost)
			&& isset($this->paramspost['key']) 
			&& isset($this->paramspost['id_grup'])
			&& isset($this->paramspost['pesan'])) {
			$this->code = 201;
			$this->responses['status'] = "Key Tidak Valid";
			$this->responses['code'] = $this->code;
			$dataSelect['key'] = $this->paramspost['key'];
			$selectdata = $this->model->select($dataSelect, $this->table);
			if ($selectdata->num_rows() > 0) {
				/*key valid*/
				$this->code = 202;
				$this->responses['status'] = "Gagal Mengirim Pesan";
				$this->responses['code'] = $this->code;
				$this->table = 't_message';
				$dataInsert['id_grup'] = $this->paramspost['id_grup'];
				$dataInsert['id_user'] = $selectdata->row()->id;
				$dataInsert['type'] = "TEXT";
				$dataInsert['text'] = $this->paramspost['pesan'];				
				$insertPesan = $this->model->insert($dataInsert, $this->table);
				if ($insertPesan) {
					$this->code = 300;
					$this->responses['status'] = "Ok";
					$this->responses['code'] = $this->code;
				}
			}
		}
		$this->response($this->responses);
	}
	function listchat_post(){
		$this->code = 202;
		$this->responses['status'] = "Token Tidak Valid";
		$this->responses['code'] = $this->code;
		$this->table = "m_user";
		if (isset($this->paramspost['key']) && isset($this->paramspost['id_grup'])) {
			$dataSelect['key'] = $this->paramspost['key'];
			$dataUser = $this->model->select($dataSelect, $this->table);
			if ($dataUser->num_rows() > 0) {
				$this->code = 201;
				$this->responses['status'] = "Gagal Mengambil Daftar Pesan";
				$this->responses['code'] = $this->code;
				$this->table = 't_message';
				$dataSelect = array();
				$dataSelect['id_grup'] = $this->paramspost['id_grup'];
				$sQuery = "
					select 
						t_message.id,
						m_grup.id as id_grup,
						m_user.id as id_user,
						m_user.nama as nama_user,
						m_user.image as image_user,
						m_grup.nama_grup as nama_grup,
						t_message.type,
						t_message.text,
						t_message.deleted,
						t_message.date_add,
						t_message.sha
					from t_message
					inner join m_user on m_user.id = t_message.id_user
					inner join m_grup on m_grup.id = t_message.id_grup
					where m_grup.id =".$this->paramspost['id_grup'];
				// $getGrup = $this->model->select($dataSelect, $this->table);
				$getGrup = $this->model->rawQuery($sQuery);
				if ($getGrup->num_rows() > 0) {
					$this->code = 300;
					$this->responses['data'] = $getGrup->result_array();
					$this->responses['status'] = "Ok";
					$this->responses['code'] = $this->code;
				}
			}
		}
		$this->response($this->responses);
	}
	function updategrup_post(){
		$this->code = 202;
		$this->responses['status'] = "Token Tidak Valid";
		$this->responses['code'] = $this->code;
		$this->table = "m_user";
		if (isset($this->paramspost['key'])) {
			$dataSelect['key'] = $this->paramspost['key'];
			$dataUser = $this->model->select($dataSelect, $this->table);
			if ($dataUser->num_rows() > 0) {
				$this->code = 100;
				$this->responses['status'] = "Field Kurang Lengkap";
				$this->responses['code'] = $this->code;			
				if (isset($this->paramspost['id_grup']) 
					&& isset($this->paramspost['namagrup']) 
					&& isset($this->paramspost['masaaktif'])) {
					$this->code = 201;
					$this->responses['status'] = "Gagal Merubah Grup";
					$this->responses['code'] = $this->code;
					$dataCondition['id'] = $this->paramspost['id_grup'];
					$dataUpdate['nama_grup'] = $this->paramspost['namagrup'];
					$dataUpdate['masa_aktif'] = $this->paramspost['masaaktif'];
					$this->table = "m_grup";
					$update = $this->model->update($dataCondition, $dataUpdate, $this->table);
					if ($update) {
						$this->code = 300;
						$this->responses['status'] = "Grup Telah Dirubah";
						$this->responses['code'] = $this->code;						
					}
				}
			}
		}
		$this->response($this->responses);		
	}
	function deletegrup_post(){
		$this->code = 202;
		$this->responses['status'] = "Token Tidak Valid";
		$this->responses['code'] = $this->code;
		$this->table = "m_user";
		if (isset($this->paramspost['key'])) {
			$dataSelect['key'] = $this->paramspost['key'];
			$dataUser = $this->model->select($dataSelect, $this->table);
			if ($dataUser->num_rows() > 0) {
				$this->code = 100;
				$this->responses['status'] = "Field Kurang Lengkap";
				$this->responses['code'] = $this->code;			
				if (isset($this->paramspost['id_grup'])) {
					$this->code = 201;
					$this->responses['status'] = "Gagal Menghapus Grup";
					$this->responses['code'] = $this->code;
					$dataCondition['id'] = $this->paramspost['id_grup'];
					$dataUpdate['deleted'] = "Y";
					$this->table = "m_grup";
					$delete = $this->model->update($dataCondition, $dataUpdate, $this->table);
					if ($delete) {
						$this->code = 300;
						$this->responses['status'] = "Grup Telah Dihapus";
						$this->responses['code'] = $this->code;						
					}
				}
			}
		}
		$this->response($this->responses);			
	}
	function sendmessage_post(){
		$this->code = 202;
		$this->responses['status'] = "Token Tidak Valid";
		$this->responses['code'] = $this->code;
		$this->table = "m_user";
		if (isset($this->paramspost['key'])) {
			$dataSelect['key'] = $this->paramspost['key'];
			$dataUser = $this->model->select($dataSelect, $this->table);
			if ($dataUser->num_rows() > 0) {
				$this->code = 100;
				$this->responses['status'] = "Field Kurang Lengkap";
				$this->responses['code'] = $this->code;							
				if (isset($this->paramspost['id_grup'])
					&& isset($this->paramspost['text'])) {
					$this->code = 201;
					$this->responses['status'] = "Gagal Mengirimkan Pesan";
					$this->responses['code'] = $this->code;
					$idUser = $dataUser->row()->id;
					$dataInsert['id_grup'] = $this->paramspost['id_grup'];
					$dataInsert['id_user'] = $idUser;
					$dataInsert['text'] = $this->paramspost['text'];
					$this->table = "t_message";
					$insert = $this->model->insert($dataInsert, $this->table);
					if ($insert) {
						$this->code = 300;
						$this->responses['status'] = "Pesan Anda Telah Terkirim";
						$this->responses['code'] = $this->code;
					}
				}
			}
		}
		$this->response($this->responses);		
	}
	function sendlocation_post(){
		$this->code = 202;
		$this->responses['status'] = "Token Tidak Valid";
		$this->responses['code'] = $this->code;
		$this->table = "m_user";
		if (isset($this->paramspost['key'])) {
			$dataSelect['key'] = $this->paramspost['key'];
			$dataUser = $this->model->select($dataSelect, $this->table);
			if ($dataUser->num_rows() > 0) {
				$this->code = 100;
				$this->responses['status'] = "Field Kurang Lengkap";
				$this->responses['code'] = $this->code;
				$idUser = $dataUser->row()->id;
				$this->table = 't_tracking';
				if (isset($this->paramspost['latitude']) && isset($this->paramspost['longitude'])) {
					$this->code = 201;
					$this->responses['status'] = "Gagal Memperbaharui Lokasi";
					$this->responses['code'] = $this->code;
					$dataCondition['id_user'] = $idUser;
					$dataUpdate['latitude'] = $this->paramspost['latitude'];
					$dataUpdate['longitude'] = $this->paramspost['longitude'];
					$update = $this->model->update($dataCondition, $dataUpdate, $this->table);
					if ($update) {
						$this->code = 300;
						$this->responses['status'] = "Lokasi Anda Telah Diperbaharui";
						$this->responses['code'] = $this->code;
					}
				}
			}
		}
		$this->response($this->responses);
	}
	function invitemember_post(){
		$this->code = 202;
		$this->responses['status'] = "Token Tidak Valid";
		$this->responses['code'] = $this->code;
		$this->table = "m_user";
		if (isset($this->paramspost['key'])) {
			$dataSelect['key'] = $this->paramspost['key'];
			$dataUser = $this->model->select($dataSelect, $this->table);
			if ($dataUser->num_rows() > 0) {
				$this->code = 100;
				$this->responses['status'] = "Field Kurang Lengkap";
				$this->responses['code'] = $this->code;
				$idUser = $dataUser->row()->id;
				if (isset($this->paramspost['no_telp']) && isset($this->paramspost['id_grup'])) {
					$dataSelectUser['no_telp'] = $this->paramspost['no_telp'];
					$getDataUser = $this->model->select($dataSelectUser, $this->table);
					if ($getDataUser->num_rows() > 0) {
						// do insert in t_grup
						$idUser = $getDataUser->row()->id;
						$dataInsertTGrup['id_user'] = $idUser;
						$dataInsertTGrup['id_grup'] = $this->paramspost['id_grup'];
						$this->table = 't_grup';
						$insertGrup = $this->model->insert($dataInsertTGrup, $this->table);
						if ($insertGrup) {
							$this->code = 300;
							$this->responses['status'] = "Member Telah Ditambahkan";
							$this->responses['code'] = $this->code;
						}
					}else{
						// do insert new user
						$dataInsert['no_telp'] = $this->paramspost['no_telp'];
						$insert = $this->model->insert($dataInsert, $this->table);
						if ($insert) {
							// do insert in t_grup
							$dataSelectNewUser['no_telp'] = $this->paramspost['no_telp'];
							$this->table = 'm_user';
							$getDataNewUser = $this->model->select($dataSelectNewUser, $this->table);
							$idUser = $getDataNewUser->row()->id;
							$dataInsertTGrup['id_user'] = $idUser;
							$dataInsertTGrup['id_grup'] = $this->paramspost['id_grup'];
							$this->table = 't_grup';
							$insertGrup = $this->model->insert($dataInsertTGrup, $this->table);
							if ($insertGrup) {
								$this->code = 300;
								$this->responses['status'] = "Member Telah Ditambahkan";
								$this->responses['code'] = $this->code;
							}
						}
					}
				}
			}
		}
		$this->response($this->responses);
	}
	function addcontact_post(){
		$this->code = 202;
		$this->responses['status'] = "Token Tidak Valid";
		$this->responses['code'] = $this->code;
		$this->table = "m_user";
		if (isset($this->paramspost['key'])) {
			$dataSelect['key'] = $this->paramspost['key'];
			$dataUser = $this->model->select($dataSelect, $this->table);
			if ($dataUser->num_rows() > 0) {
				$this->code = 100;
				$this->responses['status'] = "Field Kurang Lengkap";
				$this->responses['code'] = $this->code;
				$idUser = $dataUser->row()->id;
				$this->table = 'm_user';
				if (isset($this->paramspost['no_telp'])) {
					$this->code = 201;
					$this->responses['status'] = "User tidak ditemukan";
					$this->responses['code'] = $this->code;
					$dataCondition['no_telp'] = $this->paramspost['no_telp'];
					$getData = $this->model->select($dataCondition, $this->table);
					if ($getData->num_rows() > 0) {
						$this->code = 201;
						$this->responses['status'] = "Gagal menambahkan user";
						$this->responses['code'] = $this->code;
						$dataInsert = array();
						$dataInsert['id_user_ori'] = $idUser;
						$dataInsert['id_user_desti'] = $getData->row()->id;
						$this->table = 't_friend';
						if ($this->model->select($dataInsert, $this->table)->num_rows() < 1) {
							$insert = $this->model->insert($dataInsert, $this->table);
							if ($insert) {
								$this->code = 300;
								$this->responses['status'] = "Teman telah ditambahkan";
								$this->responses['code'] = $this->code;
							}
						}
					}
				}
			}
		}
		$this->response($this->responses);		
	}
	function listcontact_post(){
		$this->code = 202;
		$this->responses['status'] = "Token Tidak Valid";
		$this->responses['code'] = $this->code;
		$this->table = "m_user";
		if (isset($this->paramspost['key'])) {
			$dataSelect['key'] = $this->paramspost['key'];
			$dataUser = $this->model->select($dataSelect, $this->table);
			if ($dataUser->num_rows() > 0) {
				$this->code = 100;
				$this->responses['status'] = "Data kosong";
				$this->responses['code'] = $this->code;
				$idUser = $dataUser->row()->id;
				$this->table = 'm_user';

				$query = "SELECT * FROM t_friend 
							WHERE t_friend.id_user_ori = $idUser OR t_friend.id_user_desti = $idUser";
				$getIdContact = $this->model->rawQuery($query);
				if ($getIdContact->num_rows() > 0) {
					$this->code = 300;
					$this->responses['status'] = "Daftar teman";
					$this->responses['code'] = $this->code;
					$this->responses['data'] = array();
					foreach ($getIdContact->result_array() as $row) {
						$item = array();
						$dataSelect = array();
						$dataSelect['id'] = $row['id_user_ori']!=$idUser?$row['id_user_ori']:$row['id_user_desti'];
						$this->table = 'm_user';
						$selectUser = $this->model->select($dataSelect, $this->table);
						if ($selectUser->num_rows() > 0) {							
							$item['id'] = $selectUser->row()->id;
							$item['nama'] = $selectUser->row()->nama;
							$item['alamat'] = $selectUser->row()->alamat;
							$item['no_telp'] = $selectUser->row()->no_telp;
							$item['email'] = $selectUser->row()->email;
							$item['image'] = $selectUser->row()->image;
							$item['sha'] = $selectUser->row()->sha;
							array_push($this->responses['data'], $item);
						}
					}
				}
			}
		}
		$this->response($this->responses);		
	}
	function listmember_post(){
		$this->code = 202;
		$this->responses['status'] = "Token Tidak Valid";
		$this->responses['code'] = $this->code;
		$this->table = "m_user";
		if (isset($this->paramspost['key']) && isset($this->paramspost['id_grup'])) {
			$dataSelect['key'] = $this->paramspost['key'];
			$dataUser = $this->model->select($dataSelect, $this->table);
			if ($dataUser->num_rows() > 0) {
				$this->code = 201;
				$this->responses['status'] = "Gagal Mengambil Daftar Lokasi";
				$this->responses['code'] = $this->code;
				$this->table = 't_message';
				$getGrup = $this->model->rawQuery("
						select t_grup.id_grup as id_grup, m_user.*
						from t_grup
						left join m_user on m_user.id = t_grup.id_user
						where t_grup.id_grup = ".$this->paramspost['id_grup']." group by m_user.id
					");
				if ($getGrup->num_rows() > 0) {
					$this->code = 300;
					$this->responses['data'] = $getGrup->result_array();
					$this->responses['status'] = "Ok";
					$this->responses['code'] = $this->code;
				}
			}
		}
		$this->response($this->responses);	
	}	
	function locationmembergrup_post(){
		$this->code = 202;
		$this->responses['status'] = "Token Tidak Valid";
		$this->responses['code'] = $this->code;
		$this->table = "m_user";
		if (isset($this->paramspost['key']) && isset($this->paramspost['id_grup'])) {
			$dataSelect['key'] = $this->paramspost['key'];
			$dataUser = $this->model->select($dataSelect, $this->table);
			if ($dataUser->num_rows() > 0) {
				$this->code = 201;
				$this->responses['status'] = "Gagal Mengambil Daftar Lokasi";
				$this->responses['code'] = $this->code;
				$this->table = 't_message';
				$getGrup = $this->model->rawQuery("
						select t_grup.id_grup as id_grup, m_user.id, m_user.nama, m_user.image, t_tracking.latitude, t_tracking.longitude, t_tracking.sha 
						from t_grup
						left join m_user on m_user.id = t_grup.id_user
						left join t_tracking on t_tracking.id_user = m_user.id
						where t_grup.id_grup = ".$this->paramspost['id_grup']." group by m_user.id
					");
				if ($getGrup->num_rows() > 0) {
					$this->code = 300;
					$this->responses['data'] = $getGrup->result_array();
					$this->responses['status'] = "Ok";
					$this->responses['code'] = $this->code;
				}
			}
		}
		$this->response($this->responses);	
	}	
	function confirmgrup_post(){
		$this->code = 202;
		$this->responses['status'] = "Token Tidak Valid";
		$this->responses['code'] = $this->code;
		$this->table = "m_user";
		if (isset($this->paramspost['key'])) {
			$dataSelect['key'] = $this->paramspost['key'];
			$dataUser = $this->model->select($dataSelect, $this->table);
			if ($dataUser->num_rows() > 0) {
				$this->code = 100;
				$this->responses['status'] = "Field Kurang Lengkap";
				$this->responses['code'] = $this->code;
				$idUser = $dataUser->row()->id;
				if (isset($this->paramspost['id_grup'])) {
					$this->code = 201;
					$this->responses['status'] = "Gagal Memperbaharui Lokasi";
					$this->responses['code'] = $this->code;					
					$dataCondition['id_grup'] = $this->paramspost['id_grup'];
					$dataCondition['id_user'] = $idUser;
					$dataUpdate['confirmation'] = "Y";
					$this->table = "t_grup";
					$update = $this->model->update($dataCondition, $dataUpdate, $this->table);
					if ($update) {
						$this->code = 300;
						$this->responses['status'] = "Konfirmasi Berhasil";
						$this->responses['code'] = $this->code;
					}
				}
			}
		}		
		$this->response($this->responses);
	}
	function payment_post(){
		$this->code = 202;
		$this->responses['status'] = "Token Tidak Valid";
		$this->responses['code'] = $this->code;
		$this->table = "m_user";
		if (isset($this->paramspost['key'])) {
			$dataSelect['key'] = $this->paramspost['key'];
			$dataUser = $this->model->select($dataSelect, $this->table);
			if ($dataUser->num_rows() > 0) {
				$this->code = 100;
				$this->responses['status'] = "Field Kurang Lengkap";
				$this->responses['code'] = $this->code;
				$idUser = $dataUser->row()->id;
			}
		}		
		$this->response($this->responses);
	}
	function checkpayment_post(){
		$this->code = 202;
		$this->responses['status'] = "Token Tidak Valid";
		$this->responses['code'] = $this->code;
		$this->table = "m_user";
		if (isset($this->paramspost['key'])) {
			$dataSelect['key'] = $this->paramspost['key'];
			$dataUser = $this->model->select($dataSelect, $this->table);
			if ($dataUser->num_rows() > 0) {
				$this->code = 100;
				$this->responses['status'] = "Field Kurang Lengkap";
				$this->responses['code'] = $this->code;
				$idUser = $dataUser->row()->id;
			}
		}		
		$this->response($this->responses);		
	}
	function validation_post(){
		$this->code = 202;
		$this->responses['status'] = "Token Tidak Valid";
		$this->responses['code'] = $this->code;
		$this->table = "m_user";
		if (isset($this->paramspost['key'])) {
			$dataSelect['key'] = $this->paramspost['key'];
			$dataUser = $this->model->select($dataSelect, $this->table);
			if ($dataUser->num_rows() > 0) {
				$this->code = 100;
				$this->responses['status'] = "Field Kurang Lengkap";
				$this->responses['code'] = $this->code;
				$idUser = $dataUser->row()->id;
			}
		}		
		$this->response($this->responses);				
	}
	function add_location_group_post(){
		$this->code = 100;
		$this->responses['status'] = "Field Kurang Lengkap";
		$this->responses['code'] = $this->code;
		$this->table = "m_user";
		/*id_grup*/
		/*nama_lokasi*/
		/*latitude*/
		/*longitude*/
		/*prioritas*/
		/*type { base / destination }*/
		if (isset($this->paramspost)
			&& isset($this->paramspost['key']) 
			&& isset($this->paramspost['id_grup'])
			&& isset($this->paramspost['nama_lokasi'])
			&& isset($this->paramspost['latitude'])
			&& isset($this->paramspost['longitude'])
			&& isset($this->paramspost['prioritas'])
			&& isset($this->paramspost['type'])) {
			$this->code = 201;
			$this->responses['status'] = "Key Tidak Valid";
			$this->responses['code'] = $this->code;
			$dataSelect['key'] = $this->paramspost['key'];
			$selectdata = $this->model->select($dataSelect, $this->table);
			if ($selectdata->num_rows() > 0) {
				/*key valid*/
				$this->code = 202;
				$this->responses['status'] = "Gagal Menambah Lokasi";
				$this->responses['code'] = $this->code;
				$this->table = 't_lokasi';
				$dataInsert['id_grup'] = $this->paramspost['id_grup'];
				$dataInsert['nama_lokasi'] = $this->paramspost['nama_lokasi'];
				$dataInsert['latitude'] = $this->paramspost['latitude'];
				$dataInsert['longitude'] = $this->paramspost['longitude'];
				$dataInsert['prioritas'] = $this->paramspost['prioritas'];
				$dataInsert['type'] = $this->paramspost['type'];
				$insertLokasi = $this->model->insert($dataInsert, $this->table);
				if ($insertLokasi) {
					$this->code = 300;
					$this->responses['status'] = "Ok";
					$this->responses['code'] = $this->code;
				}
			}
		}
		$this->response($this->responses);
	}
	function get_location_group_post(){
		/*select t_lokasi.* from t_lokasi
		inner join m_grup on m_grup.id = t_lokasi.id_grup
		inner join t_grup on t_grup.id_grup = m_grup.id
		inner join m_user on m_user.id = t_grup.id_user
		where m_grup.id = 380 and m_user.id = 17*/
		$this->code = 202;
		$this->responses['status'] = "Token Tidak Valid";
		$this->responses['code'] = $this->code;
		$this->table = "m_user";
		if (isset($this->paramspost['key']) && isset($this->paramspost['id_grup'])) {
			$dataSelect['key'] = $this->paramspost['key'];
			$dataUser = $this->model->select($dataSelect, $this->table);
			if ($dataUser->num_rows() > 0) {
				$this->code = 201;
				$this->responses['status'] = "Gagal Mengambil Daftar Lokasi";
				$this->responses['code'] = $this->code;
				$this->table = 't_message';
				$getLocation = $this->model->rawQuery("
						select t_lokasi.* from t_lokasi
						inner join m_grup on m_grup.id = t_lokasi.id_grup
						inner join t_grup on t_grup.id_grup = m_grup.id
						inner join m_user on m_user.id = t_grup.id_user
						where m_grup.id = ".$this->paramspost['id_grup']." and m_user.id = ".$dataUser->row()->id."
					");
				if ($getLocation->num_rows() > 0) {
					$this->code = 300;
					$this->responses['data'] = $getLocation->result_array();
					$this->responses['status'] = "Ok";
					$this->responses['code'] = $this->code;
				}
			}
		}
		$this->response($this->responses);			
	}
	function info(){
		phpinfo();
	}
}