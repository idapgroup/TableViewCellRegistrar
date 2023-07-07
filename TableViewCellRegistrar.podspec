Pod::Spec.new do |s|
  s.name      = "TableViewCellRegistrar"
  s.version   = "0.1.0"
  s.summary   = "UITableView extension which allows you to register table cells using their class names as an identifier"
  s.description  = "This is simple UITableView extension which allow reducing problems associated with the identification of table cells"
  s.homepage  = "https://github.com/idapgroup/TableViewCellRegistrar"
  s.license   = { :type => "New BSD", :file => "LICENSE" }
  s.author    = { "IDAP Group" => "hello@idapgroup.com" }
  s.source    = { :git => "https://github.com/idapgroup/TableViewCellRegistrar.git",
                  :tag => s.version.to_s }

  # Platform setup
  s.requires_arc          = true
  s.ios.deployment_target = '9.0'

  # Preserve the layout of headers in the Module directory
  s.header_mappings_dir   = 'Source'
  s.source_files          = 'Source/**/*.{swift,h,m,c,cpp}'
end
