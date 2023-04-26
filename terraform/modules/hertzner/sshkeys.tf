# Create a new SSH key
resource "hcloud_ssh_key" "batch_user_key" {
  name       = "mycisb_batch"
  public_key = file("../../../ansible/files/mycisb_batch.pub")
}