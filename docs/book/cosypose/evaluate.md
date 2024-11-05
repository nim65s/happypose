# CosyPose single view evaluation

Please make sure you followed the steps relative to the evaluation in the main readme.

To evaluate on YCBV dataset:

```
python -m happypose.pose_estimators.cosypose.cosypose.scripts.run_full_cosypose_eval_new detector_run_id=bop_pbr coarse_run_id=coarse-bop-ycbv-pbr--724183 refiner_run_id=refiner-bop-ycbv-pbr--604090 ds_names=["ycbv.bop19"] result_id=ycbv-debug detection_coarse_types=["detector"] inference.renderer=bullet inference.n_workers=0
```

To change the renderer from bullet (originally used by cosypose) to panda3d:
```
python -m happypose.pose_estimators.cosypose.cosypose.scripts.run_full_cosypose_eval_new detector_run_id=bop_pbr coarse_run_id=coarse-bop-ycbv-pbr--724183 refiner_run_id=refiner-bop-ycbv-pbr--604090 ds_names=["ycbv.bop19"] result_id=ycbv-debug detection_coarse_types=["detector"] inference.renderer=panda3d inference.n_workers=1
```

To evaluate on other datasets, change ["ycbv.bop19"] to e.g. ["tless.bop19"].
To evaluate on a collection of datasets, change "ycbv.bop19" to e.g. ["ycbv.bop19", "lmo.bop19", "tless.bop19"].
