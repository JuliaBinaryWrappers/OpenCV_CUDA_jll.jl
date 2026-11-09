# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule OpenCV_CUDA_jll
using Base
using Base: UUID
using LazyArtifacts
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("OpenCV_CUDA")
JLLWrappers.@generate_main_file("OpenCV_CUDA", Base.UUID("af62fff1-f688-5658-924c-c1100684873a"))
end  # module OpenCV_CUDA_jll
