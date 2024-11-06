local home = vim.env.HOME
-- local jdtls_path = vim.fn.stdpath "data" .. "/mason/packages/jdtls/"
local jdtls_eclipse_path = "C:/Users/20203567/AppData/Local/jdt-language-server-1.9.0-202203031534/"
-- local lombok_path = vim.fn.stdpath "data" .. "/mason/packages/jdtls/lombok.jar"
local lombok_path = jdtls_eclipse_path .. "lombok.jar"
local equinox_version = "1.6.400.v20210924-0641"

local path_found = vim.fs.dirname(
  vim.fs.find(
    { '.gradlew', 'build.xml', 'pom.xml', '.gitignore', 'mvnw', }, { upward = true })[1])


WORKSPACE_PATH = home .. "/workspace/"
if vim.fn.has "mac" == 1 then
OS_NAME = "mac"
elseif vim.fn.has "unix" == 1 then
OS_NAME = "linux"
elseif vim.fn.has "win32" == 1 then
OS_NAME = "win"
else
vim.notify("Unsupported OS", vim.log.levels.WARN)
end

-- local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
-- print(project_name)
-- print(path_found)

-- local workspace_dir = WORKSPACE_PATH .. project_name


local config = {
cmd = {
-- 💀
"C:/Program Files/Eclipse Adoptium/jdk-11.0.13.8-hotspot/bin/java.exe", -- or '/path/to/java17_or_newer/bin/java'
-- depends on if `java` is in your $PATH env variable and if it points to the right version.

"-Declipse.application=org.eclipse.jdt.ls.core.id1",
"-Dosgi.bundles.defaultStartLevel=4",
"-Declipse.product=org.eclipse.jdt.ls.core.product",
"-Dlog.protocol=true",
"-Dlog.level=ALL",
"-Xms1g",
"--add-modules=ALL-SYSTEM",
"--add-opens",
"java.base/java.util=ALL-UNNAMED",
"--add-opens",
"java.base/java.lang=ALL-UNNAMED",
-- 💀
"-jar",
jdtls_eclipse_path .. "plugins/org.eclipse.equinox.launcher_" .. equinox_version .. ".jar",
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ ^^^^^^^^^^^^^^
-- Must point to the Change this to
-- eclipse.jdt.ls installation the actual version
"-javaagent",
lombok_path,
"-Xbootclasspath/a",
lombok_path,
-- 💀
"-configuration",
jdtls_eclipse_path .. "config_" .. OS_NAME,
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ ^^^^^^
-- Must point to the Change to one of `linux`, `win` or `mac`
-- eclipse.jdt.ls installation Depending on your system.

 "-data",
 path_found,
},
  root_dir = path_found
}

-- This starts a new client & server,
-- or attaches to an existing client & server depending on the `root_dir`.
-- require("jdtls").start_or_attach(config)
