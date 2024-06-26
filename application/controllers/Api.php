// application/controllers/Api.php
<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . 'libraries/REST_Controller.php';

class Api extends REST_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('item_model');
    }

    public function items_get()
    {
        $items = $this->item_model->get_items();

        if ($items) {
            $this->response($items, REST_Controller::HTTP_OK);
        } else {
            $this->response([
                'status' => FALSE,
                'message' => 'No items were found'
            ], REST_Controller::HTTP_NOT_FOUND);
        }
    }

    public function item_get($id)
    {
        if (empty($id)) {
            $this->response(null, REST_Controller::HTTP_BAD_REQUEST);
        } else {
            $item = $this->item_model->get_item($id);

            if (!empty($item)) {
                $this->set_response($item, REST_Controller::HTTP_OK);
            } else {
                $this->set_response([
                    'status' => FALSE,
                    'message' => 'Item not found'
                ], REST_Controller::HTTP_NOT_FOUND);
            }
        }
    }

    public function item_post()
    {
        $data = [
            'name' => $this->post('name'),
            'price' => $this->post('price')
        ];

        if ($this->item_model->create_item($data)) {
            $this->set_response([
                'status' => TRUE,
                'message' => 'Item created successfully.'
            ], REST_Controller::HTTP_CREATED);
        } else {
            $this->set_response([
                'status' => FALSE,
                'message' => 'Failed to create item.'
            ], REST_Controller::HTTP_BAD_REQUEST);
        }
    }

    public function item_put()
    {
        $id = $this->put('id');
        $data = [
            'name' => $this->put('name'),
            'price' => $this->put('price')
        ];

        if ($this->item_model->update_item($id, $data)) {
            $this->set_response([
                'status' => TRUE,
                'message' => 'Item updated successfully.'
            ], REST_Controller::HTTP_OK);
        } else {
            $this->set_response([
                'status' => FALSE,
                'message' => 'Failed to update item.'
            ], REST_Controller::HTTP_BAD_REQUEST);
        }
    }

    public function item_delete($id)
    {
        if ($this->item_model->delete_item($id)) {
            $this->set_response([
                'status' => TRUE,
                'message' => 'Item deleted successfully.'
            ], REST_Controller::HTTP_OK);
        } else {
            $this->set_response([
                'status' => FALSE,
                'message' => 'Failed to delete item.'
            ], REST_Controller::HTTP_BAD_REQUEST);
        }
    }
}
?>
