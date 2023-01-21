rm -rf ./test_images
mkdir test_images
python shark/examples/shark_inference/stable_diffusion/main.py --device=cuda --output_dir=./test_images --no-load_vmfb --no-use_tuned

python build_tools/image_comparison.py -n ./test_images/*.png
exit $?
