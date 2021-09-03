$file_list = []
def add_list(name)
    file_name = name + ".rb"
    $file_list.append(file_name)
end
add_list("function")
puts $file_list
add_list("hello")
puts $file_list