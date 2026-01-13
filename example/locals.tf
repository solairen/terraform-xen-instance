locals {
  absolute_path    = abspath(path.module)
  template_dir     = "${local.absolute_path}/templates"
  gigabyte_to_byte = 1073741824
}
