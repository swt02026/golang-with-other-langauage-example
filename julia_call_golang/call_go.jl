call_go_add = ccall((:add, "./libcall_by_c"),# get function desc 
		    Int64, #return type
		    (Int64, Int64), #arguments type
		    4,3) # Parameters

println("Output is :")
println(call_go_add)
