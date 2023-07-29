<?php
//defined('BASEPATH') or exit('No direct script access allowed');

class Savedata extends CI_Controller
{

  /**
   * Index Page for this controller.
   *
   * Maps to the following URL
   * 		http://example.com/index.php/welcome
   *	- or -
   * 		http://example.com/index.php/welcome/index
   *	- or -
   * Since this controller is set as the default controller in
   * config/routes.php, it's displayed at http://example.com/
   *
   * So any other public methods not prefixed with an underscore will
   * map to /index.php/welcome/<method_name>
   * @see https://codeigniter.com/user_guide/general/urls.html
   */

  public function __construct()
  {
    parent::__construct();

    $this->load->model('api_model', 'api_model');
    $this->load->model('callback_model', 'callback_model');
  }

  //TEST API
  public function index()
  {
    $query  = $this->db->query("SELECT * FROM counting ORDER BY id DESC LIMIT 1");
    $res    = $query->row();
    $lastID = $res->id;
    $isi    = "Isi " . $lastID;

    $insert = "INSERT INTO counting (nama, insert_date) VALUES ('$isi', NOW())";
    $query  = $this->db->query($insert);
    if ($query) {
      $output = array(
        "status_code" => 200,
        "status"      => "success",
        "message"     => "Sukses update"
      );
      //output to json format
      echo json_encode($output);
    } else {
      $output = array(
        "status_code" => 500,
        "status"      => "error",
        "message"     => "Gagal update"
      );
      //output to json format
      echo json_encode($output);
    }
  }

  public function save_data_to_online()
  {
    $nama = $this->input->post('nama');

    $insert = "INSERT INTO counting (nama, insert_date) VALUES ('$nama', NOW())";
    $query  = $this->db->query($insert);
    if ($query) {
      $output = array(
        "status_code" => 200,
        "status"      => "success",
        "message"     => "Sukses update"
      );
      //output to json format
      echo json_encode($output);
    } else {
      $output = array(
        "status_code" => 500,
        "status"      => "error",
        "message"     => "Gagal update"
      );
      //output to json format
      echo json_encode($output);
    }
  }
}
