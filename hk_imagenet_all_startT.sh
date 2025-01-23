INPUT_ROOT="/tmp2/ICML2025"
EXP="/tmp2/ICML2025/ddnm"
IMAGE_FOLDER="/tmp2/ICML2025/ddnm/imagenet"
START_T=1000
STEP_NUMS=5
# START_WITH="y" # y_addnoise, rand, rand_addnoise
export CUDA_VISIBLE_DEVICES=0

for START_WITH in "y_addnoise" "rand_addnoise" "rand"; do
    for START_T in $(seq 1000 -100 100); do
        echo "Running with START_T=$START_T and START_WITH=$START_WITH"
        python main.py --ni --config imagenet_256.yml --exp $EXP --path_y imagenet --eta 0.85 --deg "inpainting" --sigma_y 0. -i $IMAGE_FOLDER --input_root $INPUT_ROOT --start_T $START_T --step_nums $STEP_NUMS --start_with $START_WITH
        # python main.py --ni --config imagenet_256.yml --exp $EXP --path_y imagenet --eta 0.85 --deg "sr_bicubic" --deg_scale 4 --sigma_y 0. -i $IMAGE_FOLDER --input_root $INPUT_ROOT --start_T $START_T --step_nums $STEP_NUMS --start_with $START_WITH
        # python main.py --ni --config imagenet_256.yml --exp $EXP --path_y imagenet --eta 0.85 --deg "deblur_gauss" --sigma_y 0. -i $IMAGE_FOLDER --input_root $INPUT_ROOT --start_T $START_T --step_nums $STEP_NUMS --start_with $START_WITH
        # python main.py --ni --config imagenet_256.yml --exp $EXP --path_y imagenet --eta 0.85 --deg "cs_walshhadamard" --deg_scale 0.25 --sigma_y 0. -i $IMAGE_FOLDER --input_root $INPUT_ROOT --start_T $START_T --step_nums $STEP_NUMS --start_with $START_WITH
    done
done


for START_WITH in "y_addnoise" "rand_addnoise" "rand"; do
    for START_T in $(seq 1000 -100 100); do
        echo "Running with START_T=$START_T and START_WITH=$START_WITH"
        # python main.py --ni --config imagenet_256.yml --exp $EXP --path_y imagenet --eta 0.85 --deg "inpainting" --sigma_y 0. -i $IMAGE_FOLDER --input_root $INPUT_ROOT --start_T $START_T --step_nums $STEP_NUMS --start_with $START_WITH
        python main.py --ni --config imagenet_256.yml --exp $EXP --path_y imagenet --eta 0.85 --deg "sr_bicubic" --deg_scale 4 --sigma_y 0. -i $IMAGE_FOLDER --input_root $INPUT_ROOT --start_T $START_T --step_nums $STEP_NUMS --start_with $START_WITH
        # python main.py --ni --config imagenet_256.yml --exp $EXP --path_y imagenet --eta 0.85 --deg "deblur_gauss" --sigma_y 0. -i $IMAGE_FOLDER --input_root $INPUT_ROOT --start_T $START_T --step_nums $STEP_NUMS --start_with $START_WITH
        # python main.py --ni --config imagenet_256.yml --exp $EXP --path_y imagenet --eta 0.85 --deg "cs_walshhadamard" --deg_scale 0.25 --sigma_y 0. -i $IMAGE_FOLDER --input_root $INPUT_ROOT --start_T $START_T --step_nums $STEP_NUMS --start_with $START_WITH
    done
done

for START_WITH in "y_addnoise" "rand_addnoise" "rand"; do
    for START_T in $(seq 1000 -100 100); do
        echo "Running with START_T=$START_T and START_WITH=$START_WITH"
        # python main.py --ni --config imagenet_256.yml --exp $EXP --path_y imagenet --eta 0.85 --deg "inpainting" --sigma_y 0. -i $IMAGE_FOLDER --input_root $INPUT_ROOT --start_T $START_T --step_nums $STEP_NUMS --start_with $START_WITH
        # python main.py --ni --config imagenet_256.yml --exp $EXP --path_y imagenet --eta 0.85 --deg "sr_bicubic" --deg_scale 4 --sigma_y 0. -i $IMAGE_FOLDER --input_root $INPUT_ROOT --start_T $START_T --step_nums $STEP_NUMS --start_with $START_WITH
        python main.py --ni --config imagenet_256.yml --exp $EXP --path_y imagenet --eta 0.85 --deg "deblur_gauss" --sigma_y 0. -i $IMAGE_FOLDER --input_root $INPUT_ROOT --start_T $START_T --step_nums $STEP_NUMS --start_with $START_WITH
        # python main.py --ni --config imagenet_256.yml --exp $EXP --path_y imagenet --eta 0.85 --deg "cs_walshhadamard" --deg_scale 0.25 --sigma_y 0. -i $IMAGE_FOLDER --input_root $INPUT_ROOT --start_T $START_T --step_nums $STEP_NUMS --start_with $START_WITH
    done
done

for START_WITH in "y_addnoise" "rand_addnoise" "rand"; do
    for START_T in $(seq 1000 -100 100); do
        echo "Running with START_T=$START_T and START_WITH=$START_WITH"
        # python main.py --ni --config imagenet_256.yml --exp $EXP --path_y imagenet --eta 0.85 --deg "inpainting" --sigma_y 0. -i $IMAGE_FOLDER --input_root $INPUT_ROOT --start_T $START_T --step_nums $STEP_NUMS --start_with $START_WITH
        # python main.py --ni --config imagenet_256.yml --exp $EXP --path_y imagenet --eta 0.85 --deg "sr_bicubic" --deg_scale 4 --sigma_y 0. -i $IMAGE_FOLDER --input_root $INPUT_ROOT --start_T $START_T --step_nums $STEP_NUMS --start_with $START_WITH
        # python main.py --ni --config imagenet_256.yml --exp $EXP --path_y imagenet --eta 0.85 --deg "deblur_gauss" --sigma_y 0. -i $IMAGE_FOLDER --input_root $INPUT_ROOT --start_T $START_T --step_nums $STEP_NUMS --start_with $START_WITH
        python main.py --ni --config imagenet_256.yml --exp $EXP --path_y imagenet --eta 0.85 --deg "cs_walshhadamard" --deg_scale 0.25 --sigma_y 0. -i $IMAGE_FOLDER --input_root $INPUT_ROOT --start_T $START_T --step_nums $STEP_NUMS --start_with $START_WITH
    done
done

# python main.py --ni --config imagenet_256.yml --exp $EXP --path_y imagenet --eta 0.85 --deg "sr_bicubic" --deg_scale 4 --sigma_y 0. -i $IMAGE_FOLDER --input_root $INPUT_ROOT --start_T $START_T --step_nums 5
# python main.py --ni --config imagenet_256.yml --exp $EXP --path_y imagenet --eta 0.85 --deg "sr_bicubic" --deg_scale 4 --sigma_y 0. -i $IMAGE_FOLDER --input_root $INPUT_ROOT --start_T $START_T --step_nums 10
# python main.py --ni --config imagenet_256.yml --exp $EXP --path_y imagenet --eta 0.85 --deg "sr_bicubic" --deg_scale 4 --sigma_y 0. -i $IMAGE_FOLDER --input_root $INPUT_ROOT --start_T $START_T --step_nums 20
# python main.py --ni --config imagenet_256.yml --exp $EXP --path_y imagenet --eta 0.85 --deg "deblur_gauss" --sigma_y 0. -i $IMAGE_FOLDER --input_root $INPUT_ROOT --start_T $START_T --step_nums 5
# python main.py --ni --config imagenet_256.yml --exp $EXP --path_y imagenet --eta 0.85 --deg "deblur_gauss" --sigma_y 0. -i $IMAGE_FOLDER --input_root $INPUT_ROOT --start_T $START_T --step_nums 10
# python main.py --ni --config imagenet_256.yml --exp $EXP --path_y imagenet --eta 0.85 --deg "deblur_gauss" --sigma_y 0. -i $IMAGE_FOLDER --input_root $INPUT_ROOT --start_T $START_T --step_nums 20

# python main.py --ni --config imagenet_256.yml --exp $EXP --path_y imagenet --eta 0.85 --deg "inpainting" --sigma_y 0. -i $IMAGE_FOLDER --input_root $INPUT_ROOT --start_T $START_T --step_nums 5 --start_with y_addnoise
# python main.py --ni --config imagenet_256.yml --exp $EXP --path_y imagenet --eta 0.85 --deg "inpainting" --sigma_y 0. -i $IMAGE_FOLDER --input_root $INPUT_ROOT --start_T $START_T --step_nums 5 --start_with rand_addnoise
# python main.py --ni --config imagenet_256.yml --exp $EXP --path_y imagenet --eta 0.85 --deg "inpainting" --sigma_y 0. -i $IMAGE_FOLDER --input_root $INPUT_ROOT --start_T $START_T --step_nums 5 --start_with rand


# python main.py --ni --config imagenet_256.yml --exp $EXP --path_y imagenet --eta 0.85 --deg "inpainting" --sigma_y 0. -i $IMAGE_FOLDER --input_root $INPUT_ROOT --start_T $START_T --step_nums 10
# python main.py --ni --config imagenet_256.yml --exp $EXP --path_y imagenet --eta 0.85 --deg "inpainting" --sigma_y 0. -i $IMAGE_FOLDER --input_root $INPUT_ROOT --start_T $START_T --step_nums 20
# python main.py --ni --config imagenet_256.yml --exp $EXP --path_y imagenet --eta 0.85 --deg "cs_walshhadamard" --deg_scale 0.25 --sigma_y 0. -i $IMAGE_FOLDER --input_root $INPUT_ROOT --start_T $START_T --step_nums 5
# python main.py --ni --config imagenet_256.yml --exp $EXP --path_y imagenet --eta 0.85 --deg "cs_walshhadamard" --deg_scale 0.25 --sigma_y 0. -i $IMAGE_FOLDER --input_root $INPUT_ROOT --start_T $START_T --step_nums 10
# python main.py --ni --config imagenet_256.yml --exp $EXP --path_y imagenet --eta 0.85 --deg "cs_walshhadamard" --deg_scale 0.25 --sigma_y 0. -i $IMAGE_FOLDER --input_root $INPUT_ROOT --start_T $START_T --step_nums 20


# # python main.py --ni --config imagenet_256.yml --exp $EXP --path_y imagenet --eta 0.85 --deg "inpainting" --sigma_y 0. -i $IMAGE_FOLDER --input_root $INPUT_ROOT --step_nums 5


## Experiments on CelebA ##
# noise-free tasks


# python main.py --ni --config celeba_hq.yml --exp $EXP --path_y celeba_hq --eta 0.85 --deg "sr_bicubic" --deg_scale 4 --sigma_y 0. -i $IMAGE_FOLDER --input_root $INPUT_ROOT

# python main.py --ni --config celeba_hq.yml --path_y celeba_hq --eta 0.85 --deg "sr_averagepooling" --deg_scale 4 --sigma_y 0. -i celeba_sr_ap_4

# python main.py --ni --config celeba_hq.yml --path_y celeba_hq --eta 0.85 --deg "deblur_gauss" --sigma_y 0. -i celeba_deblur_g

# python main.py --ni --config celeba_hq.yml --path_y celeba_hq --eta 0.85 --deg "colorization" --sigma_y 0. -i celeba_colorization

# python main.py --ni --config celeba_hq.yml --path_y celeba_hq --eta 0.85 --deg "cs_walshhadamard" --deg_scale 0.25 --sigma_y 0. -i celeba_cs_wh_025

# python main.py --ni --config celeba_hq.yml --path_y celeba_hq --eta 0.85 --deg "inpainting" --sigma_y 0. -i celeba_inpainting

#     # noisy tasks
# python main.py --ni --config celeba_hq.yml --path_y celeba_hq --eta 0.85 --deg "sr_averagepooling" --deg_scale 16 --sigma_y 0.2 -i celeba_sr_ap_16_n_02 --add_noise

# python main.py --ni --config celeba_hq.yml --path_y celeba_hq --eta 0.85 --deg "cs_walshhadamard" --deg_scale 0.25 --sigma_y 0.2 -i celeba_cs_wh_025_n_02 --add_noise


## Experiments on ImageNet ##

    # noise-free tasks
# python main.py --ni --config imagenet_256.yml --path_y imagenet --eta 0.85 --deg "sr_bicubic" --deg_scale 4 --sigma_y 0. -i imagenet_sr_bc_4

# python main.py --ni --config imagenet_256.yml --path_y imagenet --eta 0.85 --deg "sr_averagepooling" --deg_scale 4 --sigma_y 0. -i imagenet_sr_ap_4

# python main.py --ni --config imagenet_256.yml --path_y imagenet --eta 0.85 --deg "deblur_gauss" --sigma_y 0. -i imagenet_deblur_g

# python main.py --ni --config imagenet_256.yml --path_y imagenet --eta 0.85 --deg "colorization" --sigma_y 0. -i imagenet_colorization

# python main.py --ni --config imagenet_256.yml --path_y imagenet --eta 0.85 --deg "cs_walshhadamard" --deg_scale 0.25 --sigma_y 0. -i imagenet_cs_wh_025

# python main.py --ni --config imagenet_256.yml --path_y imagenet --eta 0.85 --deg "inpainting" --sigma_y 0. -i imagenet_inpainting
