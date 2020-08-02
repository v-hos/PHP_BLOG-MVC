<?php
class Home extends Controller {
    public function index() {
        $data = $this->model->getPosts();

        $this->view->post = $data;
        $this->view->render('home/index');}}
