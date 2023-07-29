<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Po extends CI_Controller
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

    $this->load->helper('form');
    $this->load->helper('url');
  }

  public function save_po_from_local()
  {
    $get = $this->input->request_headers()['Authorization'];
    if ($get != '') {
      $array_get = explode(' ', $get);
      if ($array_get[0] == 'Basic' &&  $array_get[1] == 'bmptdWRpbkBvbWFzLW1mZy5jb206JDJ5JDEwJFBVcXhaLlZhekZWbzd5aVNuUzZQUU9wRHJnYUFrTmI3U2Q1VlJ0UzJxQ2lJTkRuTVJKWFJL') {

        $username = $_SERVER['PHP_AUTH_USER'];
        $password = $_SERVER['PHP_AUTH_PW'];

        if ($username == 'njmudin@omas-mfg.com' && $password == '$2y$10$PUqxZ.VazFVo7yiSnS6PQOpDrgaAkNb7Sd5VRtS2qCiINDnMRJXRK') {

          //EXTRACT DATA FROM LOCAL
          $array_data   = json_decode($this->input->post('data'));
          $data_insert  = array();
          foreach ($array_data as $key => $val) {
            $NoBukti  = $val->NoBukti;
            $cek_po   = $this->db->query("SELECT NoBukti FROM tbl_po WHERE NoBukti = '$NoBukti'")->num_rows();
            if ($cek_po == 0) {
              $data_insert[] = array(
                'NoBukti'           => $val->NoBukti,
                "POParent"          => $val->POParent,
                "TGL"               => $val->TGL,
                "Tgl_Needed"        => $val->Tgl_Needed,
                "ShipmentNotes"     => $val->ShipmentNotes,
                "TGL_JatuhTempo"    => $val->TGL_JatuhTempo,
                "isImport"          => $val->isImport,
                "isAsset"           => $val->isAsset,
                "isBDP"             => $val->isBDP,
                "Status"            => $val->Status,
                "NoContract"        => $val->NoContract,
                "SupplierID"        => $val->SupplierID,
                "ShipmentTo"        => $val->ShipmentTo,
                "Term"              => $val->Term,
                "NilaiTukar"        => $val->NilaiTukar,
                "ConditionID"       => $val->ConditionID,
                "PaymentID"         => $val->PaymentID,
                "ConsigneeID"       => $val->ConsigneeID,
                "PelabuhanID"       => $val->PelabuhanID,
                "TipePPN"           => $val->TipePPN,
                "PPN"               => $val->PPN,
                "MataUang"          => $val->MataUang,
                "Discount"          => $val->Discount,
                "Fee"               => $val->Fee,
                "isWIP"             => $val->isWIP,
                "F_Print"           => $val->F_Print,
                "InvID"             => $val->InvID,
                "JurnalID"          => $val->JurnalID,
                "OnBoardDate"       => $val->OnBoardDate,
                "Keterangan"        => $val->Keterangan,
                "KeteranganJasa"    => $val->KeteranganJasa,
                "ExportWeb"         => $val->ExportWeb,
                "StatusUploadWeb"   => $val->StatusUploadWeb,
                "CreateDate"        => $val->CreateDate,
                "CreateBy"          => $val->CreateBy,
                "CompanyCode"       => $val->CompanyCode,
                "TglUploadWeb"      => date('Y-m-d H:i:s')
              );
            }
          }

          //SAVE TO DB
          //echo count($data_insert);
          if (count($data_insert) > 0) {
            $insert = $this->db->insert_batch('tbl_po', $data_insert);
            if ($insert) {
              echo json_encode(
                array(
                  'code'    => 200,
                  'status'  => 'success',
                  'message' => 'NoBukti PO sukses terinput',
                  'data'    => array()
                )
              );
            } else {
              echo json_encode(
                array(
                  'code'    => 500,
                  'status'  => 'error',
                  'message' => 'NoBukti PO gagal terinput',
                  'data'    => array()
                )
              );
            }
          } else {
            echo json_encode(
              array(
                'code'    => 200,
                'status'  => 'success',
                'message' => 'NoBukti PO sudah terdaftar',
                'data'    => array()
              )
            );
          }
        } else {
          echo json_encode(
            array(
              'code'    => 500,
              'status'  => 'error',
              'message' => 'Username atau password tidak valid',
              'data'    => array()
            )
          );
        }
      } else {
        echo json_encode(
          array(
            'code'    => 500,
            'status'  => 'error',
            'message' => 'Oops.. auth tidak valid',
            'data'    => array()
          )
        );
      }
    } else {
      echo json_encode(
        array(
          'code'    => 403,
          'status'  => 'error',
          'message' => 'Header tidak ditemukan',
          'data'    => array()
        )
      );
    }
  }
}
