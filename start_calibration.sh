BAG_PATH=/data/drone_0_cam/cam_abcd/omni_calibration_2023-09-13-22-26-53-split.bag
TARGET_PATH=/data/target/april_6x6.yaml
OUTPUT_PATH=/data/drone_0_cam/cam_abcd/output

# rosrun kalibr tartan_calibrate   --bag $BAG_PATH\
#   --target $TARGET_PATH\
#   --topics  /oak_ffc_4p/image_CAM_D/compressed \
#   --min-init-corners-autocomplete 30 \
#   --min-tag-size-autocomplete 2 \
#   --models omni-radtan\
#   --save_dir $OUTPUT_PATH \


# BAG_PATH=/data/omnicam/omni_calibration_CAMABCD-split.bag

rosrun kalibr tartan_calibrate   --bag $BAG_PATH\
  --target /data/target/april_6x6.yaml\
  --topics  /oak_ffc_4p/image_CAM_A/compressed\
            /oak_ffc_4p/image_CAM_B/compressed\
            /oak_ffc_4p/image_CAM_C/compressed\
            /oak_ffc_4p/image_CAM_D/compressed\
  --min-init-corners-autocomplete 30 \
  --min-tag-size-autocomplete 2 \
  --models omni-radtan omni-radtan omni-radtan omni-radtan\
  --save_dir $OUTPUT_PATH \
  --intrinsic-prarameters /data/drone_0_cam/cam_abcd/intrinsic_parameters.yaml