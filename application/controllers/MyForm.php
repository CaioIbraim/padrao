<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of MyForm
 *
 * @author 13125877
 */
class MyForm extends CI_Controller{
   //put your code here

   public function __construct() {
      parent::__construct();
      $this->load->helper(array('form', 'url'));
      $this->load->library('form_validation');
      $this->load->library('parser');
      $this->form_validation->set_error_delimiters('<div class="alert alert-warning"><strong>Atenção! </strong>', '</div>');

      //Configurando mensagens de erro
      $this->form_validation->set_message('min_length' ,  '{field} deve ter pelo menos {param} caracteres.');
      $this->form_validation->set_message('required'   ,  '{field} é um campo obrigatório.');
      $this->form_validation->set_message('valid_email',  '{field} deve conter um email válido.');
      $this->form_validation->set_message('matches',      '{field} deve ser igual ao campo {param}.');

   }

public function index(){

      $this->form_validation->set_rules('username', 'Usuário', 'callback_username_check|required');
      $this->form_validation->set_rules('password', 'Senha', 'trim|required|min_length[8]');
      $this->form_validation->set_rules('passconf', 'Confirmar Senha', 'trim|required|matches[password]');
      $this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email');

      if ($this->form_validation->run() == FALSE)
      {
         $this->load->view('myform');
      }
      else
      {
         $this->load->view('formsuccess');
      }
}


public function username_check($str){
   if ($str == 'test')
   {
           $this->form_validation->set_message('username_check', 'O {field} Não pode conter a palavra "test"');
           return FALSE;
   }
   else
   {
           return TRUE;
   }
}

}
