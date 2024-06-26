// application/models/Item_model.php
<?php
class Item_model extends CI_Model {

    public function __construct()
    {
        parent::__construct();
        // Load database library
        $this->load->database();
    }

    public function get_items()
    {
        return $this->db->get('items')->result_array();
    }

    public function get_item($id)
    {
        return $this->db->get_where('items', array('id' => $id))->row_array();
    }

    public function create_item($data)
    {
        return $this->db->insert('items', $data);
    }

    public function update_item($id, $data)
    {
        $this->db->where('id', $id);
        return $this->db->update('items', $data);
    }

    public function delete_item($id)
    {
        return $this->db->delete('items', array('id' => $id));
    }
}
?>
