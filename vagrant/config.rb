project_abs_dir = File.dirname(File.dirname(__FILE__))
offline_res_path = 'temp/offline_res'

$instance_name_prefix = "wh"
$vm_cpus = 2
$vm_memory = 2048

$num_instances = 3
$etcd_instances = $num_instances
$kube_master_instances = $num_instances == 1 ? $num_instances : ($num_instances - 1)
$kube_node_instances = $num_instances

$os = "centos"
$subnet = "10.0.20"
$network_plugin = "flannel"
$inventory = "inventory/wh_local"
$shared_folders = {
  "#{offline_res_path}/base_rpms" => "/var/lib/yum_repo/x86_64/7/offline/base/packages",
  "#{offline_res_path}/docker_rpms" => "/var/lib/yum_repo/x86_64/7/offline/docker-ce/packages",
  "#{offline_res_path}/extras_rpms" => "/var/lib/yum_repo/x86_64/7/offline/extras/packages",
  "#{offline_res_path}/updates_rpms" => "/var/lib/yum_repo/x86_64/7/offline/updates/packages",
  "#{offline_res_path}/createrepo_rpms" => "/var/lib/yum_repo/x86_64/7/offline/createrepo/packages",

  # "#{offline_res_path}/docker_rpms" => "/var/lib/yum_repo/x86_64/7/docker-ce/packages",
}

$download_cache_dir = File.join(project_abs_dir, offline_res_path, "kubespray_cache")

$offline_guest = false
