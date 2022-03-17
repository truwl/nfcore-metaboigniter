version 1.0

workflow metaboigniter {
	input{
		String outdir = "./results"
		String? email
		String quantification_openms_xcms_library_neg = "xcms"
		String performIPO_library_neg = "none"
		String ipo_methodXset_library_neg = "centWave"
		Float ipo_noise_l_library_neg = 1000
		Float? ipo_noise_h_library_neg
		Float ipo_snthresh_l_library_neg = 10
		Float ipo_snthresh_h_library_neg = 10
		String ipo_mzCenterFun_library_neg = "wMean"
		Float ipo_integrate_library_neg = 1
		Boolean? ipo_fitgauss_library_neg
		Float ipo_min_peakwidth_l_library_neg = 12
		Float ipo_min_peakwidth_h_library_neg = 28
		Float ipo_max_peakwidth_l_library_neg = 35
		Float ipo_max_peakwidth_h_library_neg = 65
		Float ipo_ppm_l_library_neg = 17
		Float ipo_ppm_h_library_neg = 32
		Float ipo_mzdiff_l_library_neg = -0.001
		Float ipo_mzdiff_h_library_neg = 0.01
		Float ipo_charge_camera_library_neg = 1
		Float ipo_max_ppm_camera_library_neg = 10
		Float ipo_prefilter_l_l_library_neg = 3
		Float ipo_prefilter_l_h_library_neg = 3
		Float ipo_prefilter_h_l_library_neg = 100
		Float ipo_prefilter_h_h_library_neg = 100
		Float ipo_ncores_library_neg = 5
		Float? ipo_gapInit_l_library_neg
		Float ipo_gapInit_h_library_neg = 0.4
		Float ipo_gapExtend_l_library_neg = 2.1
		Float ipo_gapExtend_h_library_neg = 2.7
		Float ipo_profStep_l_library_neg = 0.7
		Float ipo_profStep_h_library_neg = 1
		Float ipo_response_l_library_neg = 1
		Float ipo_response_h_library_neg = 1
		Float ipo_factorDiag_l_library_neg = 2
		Float ipo_factorDiag_h_library_neg = 2
		Float ipo_factorGap_l_library_neg = 1
		Float ipo_factorGap_h_library_neg = 1
		Float? ipo_localAlignment_library_neg
		Float ipo_bw_l_library_neg = 22
		Float ipo_bw_h_library_neg = 38
		Float ipo_minfrac_l_library_neg = 0.3
		Float ipo_minfrac_h_library_neg = 0.7
		Float ipo_mzwid_l_library_neg = 0.015
		Float ipo_mzwid_h_library_neg = 0.035
		Float ipo_minsamp_l_library_neg = 1
		Float ipo_minsamp_h_library_neg = 1
		Float ipo_max_l_library_neg = 50
		Float ipo_max_h_library_neg = 50
		String ipo_distFunc_library_neg = "cor_opt"
		String ipo_methodRT_library_neg = "obiwarp"
		Float masstrace_ppm_library_neg_xcms = 10
		Float peakwidthlow_quant_library_neg_xcms = 5
		Float peakwidthhigh_quant_library_neg_xcms = 30
		Float noise_quant_library_neg_xcms = 1000
		Float mzdiff_quant_library_neg_xcms = -0.001
		Float snthresh_quant_library_neg_xcms = 10
		Float prefilter_quant_library_neg_xcms = 3
		Float value_of_prefilter_quant_library_neg_xcms = 100
		String mzCenterFun_quant_library_neg_xcms = "wMean"
		Float integrate_quant_library_neg_xcms = 1
		Boolean? fitgauss_quant_library_neg_xcms
		String sampleclass_quant_library_neg_xcms = "Sample"
		Float sigma_group_library_neg_camera = 8
		Float perfwhm_group_library_neg_camera = 0.6
		String intval_group_library_neg_camera = "maxo"
		Float ppm_findaddcuts_library_neg_camera = 10
		String polarity_findaddcuts_library_neg_camera = "negative"
		Float maxcharge_findisotopes_library_neg_camera = 1
		Float ppm_mapmsmstocamera_library_neg_msnbase = 10
		Float rt_mapmsmstocamera_library_neg_msnbase = 5
		String raw_file_name_preparelibrary_neg_msnbase = "rawFile"
		String compund_id_preparelibrary_neg_msnbase = "HMDB.YMDB.ID"
		String compound_name_preparelibrary_neg_msnbase = "PRIMARY_NAME"
		String mz_col_preparelibrary_neg_msnbase = "mz"
		String which_mz_preparelibrary_neg_msnbase = "f"
		Float ncore_searchengine_library_neg_msnbase = 1
		Float ppm_create_library_neg_msnbase = 10
		Float ppm_output_neg_camera = 10
		Float rt_output_neg_camera = 5
		Boolean impute_output_neg_camera = true
		String type_column_output_neg_camera = "Class"
		String selected_type_output_neg_camera = "Sample"
		Boolean rename_output_neg_camera = true
		String rename_col_output_neg_camera = "rename"
		Boolean? only_report_with_id_output_neg_camera
		Boolean? combine_replicate_output_neg_camera
		String combine_replicate_column_output_neg_camera = "rep"
		Boolean log_output_neg_camera = true
		Float sample_coverage_output_neg_camera = 50
		String normalize_output_neg_camera = "1"
		String? database_csv_files_neg_cfmid
		Float ncore_neg_cfmid = 2
		String candidate_id_identification_neg_cfmid = "Identifier"
		String candidate_inchi_smiles_identification_neg_cfmid = "SMILES"
		String candidate_mass_identification_neg_cfmid = "MonoisotopicMass"
		String database_name_column_identification_neg_cfmid = "Name"
		String database_inchI_column_identification_neg_cfmid = "InChI"
		String? database_csv_files_neg_metfrag
		Float ncore_neg_metfrag = 2
		String database_csifingerid_neg_csifingerid = "hmdb"
		Float ncore_csifingerid_neg_csifingerid = 2
		Float timeout_csifingerid_neg_csifingerid = 600
		Float ppm_mapmsmstocamera_neg_msnbase = 10
		Float rt_mapmsmstocamera_neg_msnbase = 5
		Float precursorppm_msmstoparam_neg_msnbase = 10
		Float fragmentppm_msmstoparam_neg_msnbase = 20
		Float fragmentabs_msmstoparam_neg_msnbase = 0.05
		String database_msmstoparam_neg_msnbase = "LocalCSV"
		String mode_msmstoparam_neg_msnbase = "neg"
		String adductRules_msmstoparam_neg_msnbase = "primary"
		Float minPeaks_msmstoparam_neg_msnbase = 2
		Float sigma_group_neg_camera = 8
		Float perfwhm_group_neg_camera = 0.6
		String intval_group_neg_camera = "maxo"
		Float ppm_findaddcuts_neg_camera = 10
		String polarity_findaddcuts_neg_camera = "negative"
		Float maxcharge_findisotopes_neg_camera = 1
		Boolean? blank_filter_neg
		String method_blankfilter_neg_xcms = "max"
		String blank_blankfilter_neg_xcms = "Blank"
		String sample_blankfilter_neg_xcms = "Sample"
		String rest_blankfilter_neg_xcms = "T"
		Boolean? dilution_filter_neg
		String corto_dilutionfilter_neg_xcms = "0.5,1,2,4"
		String dilution_dilutionfilter_neg_xcms = "D1,D2,D3,D4"
		Float pvalue_dilutionfilter_neg_xcms = 0.05
		Float corcut_dilutionfilter_neg_xcms = -1
		String abs_dilutionfilter_neg_xcms = "F"
		Boolean? cv_filter_neg
		String qc_cvfilter_neg_xcms = "QC"
		Float cvcut_cvfilter_neg_xcms = 0.3
		String quantification_openms_xcms_neg = "xcms"
		String performIPO_neg = "none"
		Boolean? ipo_allSamples_neg
		String ipo_columnToSelect_neg = "Class"
		String ipo_valueToSelect_neg = "QC"
		String ipo_methodXset_neg = "centWave"
		Float? ipo_noise_l_neg
		Float? ipo_noise_h_neg
		Float ipo_snthresh_l_neg = 10
		Float ipo_snthresh_h_neg = 10
		String ipo_mzCenterFun_neg = "wMean"
		Float ipo_integrate_neg = 1
		Boolean? ipo_fitgauss_neg
		Float ipo_min_peakwidth_l_neg = 12
		Float ipo_min_peakwidth_h_neg = 28
		Float ipo_max_peakwidth_l_neg = 35
		Float ipo_max_peakwidth_h_neg = 65
		Float ipo_ppm_l_neg = 17
		Float ipo_ppm_h_neg = 32
		Float ipo_mzdiff_l_neg = -0.001
		Float ipo_mzdiff_h_neg = 0.01
		Float ipo_charge_camera_neg = 1
		Float ipo_max_ppm_camera_neg = 10
		Float ipo_prefilter_l_l_neg = 3
		Float ipo_prefilter_l_h_neg = 3
		Float ipo_prefilter_h_l_neg = 100
		Float ipo_prefilter_h_h_neg = 100
		Float ipo_ncores_neg = 5
		Float? ipo_gapInit_l_neg
		Float ipo_gapInit_h_neg = 0.4
		Float ipo_gapExtend_l_neg = 2.1
		Float ipo_gapExtend_h_neg = 2.7
		Float ipo_profStep_l_neg = 0.7
		Float ipo_profStep_h_neg = 1
		Float ipo_response_l_neg = 1
		Float ipo_response_h_neg = 1
		Float ipo_factorDiag_l_neg = 2
		Float ipo_factorDiag_h_neg = 2
		Float ipo_factorGap_l_neg = 1
		Float ipo_factorGap_h_neg = 1
		Float? ipo_localAlignment_neg
		Float ipo_bw_l_neg = 22
		Float ipo_bw_h_neg = 38
		Float ipo_minfrac_l_neg = 0.3
		Float ipo_minfrac_h_neg = 0.7
		Float ipo_mzwid_l_neg = 0.015
		Float ipo_mzwid_h_neg = 0.035
		Float ipo_minsamp_l_neg = 1
		Float ipo_minsamp_h_neg = 1
		Float ipo_max_l_neg = 50
		Float ipo_max_h_neg = 50
		String ipo_distFunc_neg = "cor_opt"
		String ipo_methodRT_neg = "obiwarp"
		Float masstrace_ppm_neg_xcms = 10
		Float peakwidthlow_quant_neg_xcms = 5
		Float peakwidthhigh_quant_neg_xcms = 30
		Float noise_quant_neg_xcms = 1000
		Float mzdiff_quant_neg_xcms = -0.001
		Float snthresh_quant_neg_xcms = 10
		Float prefilter_quant_neg_xcms = 3
		Float value_of_prefilter_quant_neg_xcms = 100
		String mzCenterFun_quant_neg_xcms = "wMean"
		Float integrate_quant_neg_xcms = 1
		Boolean? fitgauss_quant_neg_xcms
		String phenodatacolumn_quant_neg = "Class"
		String sampleclass_quant_neg_xcms = "Sample"
		Float profStep_align_N1_neg_xcms = 1
		String center_align_N1_neg_xcms = "NULL"
		Float response_align_N1_neg_xcms = 1
		String distFunc_align_N1_neg_xcms = "cor_opt"
		String gapInit_align_N1_neg_xcms = "NULL"
		String gapExtend_align_N1_neg_xcms = "NULL"
		Float factorDiag_align_N1_neg_xcms = 2
		Float factorGap_align_N1_neg_xcms = 1
		Float? localAlignment_align_N1_neg_xcms
		Float bandwidth_group_N1_neg_xcms = 15
		Float mzwid_group_N1_neg_xcms = 0.005
		Float minfrac_group_N1_neg_xcms = 0.5
		Float minsamp_group_N1_neg_xcms = 1
		Float max_group_N1_neg_xcms = 50
		String quantification_openms_xcms_library_pos = "xcms"
		String performIPO_library_pos = "none"
		String ipo_methodXset_library_pos = "centWave"
		Float? ipo_noise_l_library_pos
		Float? ipo_noise_h_library_pos
		Float ipo_snthresh_l_library_pos = 10
		Float ipo_snthresh_h_library_pos = 10
		String ipo_mzCenterFun_library_pos = "wMean"
		Float ipo_integrate_library_pos = 1
		Boolean? ipo_fitgauss_library_pos
		Float ipo_min_peakwidth_l_library_pos = 12
		Float ipo_min_peakwidth_h_library_pos = 28
		Float ipo_max_peakwidth_l_library_pos = 35
		Float ipo_max_peakwidth_h_library_pos = 65
		Float ipo_ppm_l_library_pos = 17
		Float ipo_ppm_h_library_pos = 32
		Float ipo_mzdiff_l_library_pos = -0.001
		Float ipo_mzdiff_h_library_pos = 0.01
		Float ipo_charge_camera_library_pos = 1
		Float ipo_max_ppm_camera_library_pos = 10
		Float ipo_prefilter_l_l_library_pos = 3
		Float ipo_prefilter_l_h_library_pos = 3
		Float ipo_prefilter_h_l_library_pos = 100
		Float ipo_prefilter_h_h_library_pos = 100
		Float ipo_ncores_library_pos = 5
		Float? ipo_gapInit_l_library_pos
		Float ipo_gapInit_h_library_pos = 0.4
		Float ipo_gapExtend_l_library_pos = 2.1
		Float ipo_gapExtend_h_library_pos = 2.7
		Float ipo_profStep_l_library_pos = 0.7
		Float ipo_profStep_h_library_pos = 1
		Float ipo_response_l_library_pos = 1
		Float ipo_response_h_library_pos = 1
		Float ipo_factorDiag_l_library_pos = 2
		Float ipo_factorDiag_h_library_pos = 2
		Float ipo_factorGap_l_library_pos = 1
		Float ipo_factorGap_h_library_pos = 1
		Float? ipo_localAlignment_library_pos
		Float ipo_bw_l_library_pos = 22
		Float ipo_bw_h_library_pos = 38
		Float ipo_minfrac_l_library_pos = 0.3
		Float ipo_minfrac_h_library_pos = 0.7
		Float ipo_mzwid_l_library_pos = 0.015
		Float ipo_mzwid_h_library_pos = 0.035
		Float ipo_minsamp_l_library_pos = 1
		Float ipo_minsamp_h_library_pos = 1
		Float ipo_max_l_library_pos = 50
		Float ipo_max_h_library_pos = 50
		String ipo_distFunc_library_pos = "cor_opt"
		String ipo_methodRT_library_pos = "obiwarp"
		Float masstrace_ppm_library_pos_xcms = 10
		Float peakwidthlow_quant_library_pos_xcms = 5
		Float peakwidthhigh_quant_library_pos_xcms = 30
		Float noise_quant_library_pos_xcms = 1000
		Float mzdiff_quant_library_pos_xcms = -0.001
		Float snthresh_quant_library_pos_xcms = 10
		Float prefilter_quant_library_pos_xcms = 3
		Float value_of_prefilter_quant_library_pos_xcms = 100
		String mzCenterFun_quant_library_pos_xcms = "wMean"
		Float integrate_quant_library_pos_xcms = 1
		Boolean? fitgauss_quant_library_pos_xcms
		String sampleclass_quant_library_pos_xcms = "Sample"
		Float sigma_group_library_pos_camera = 8
		Float perfwhm_group_library_pos_camera = 0.6
		String intval_group_library_pos_camera = "maxo"
		Float ppm_findaddcuts_library_pos_camera = 10
		String polarity_findaddcuts_library_pos_camera = "positive"
		Float maxcharge_findisotopes_library_pos_camera = 1
		Float ppm_mapmsmstocamera_library_pos_msnbase = 10
		Float rt_mapmsmstocamera_library_pos_msnbase = 5
		String raw_file_name_preparelibrary_pos_msnbase = "rawFile"
		String compund_id_preparelibrary_pos_msnbase = "HMDB.YMDB.ID"
		String compound_name_preparelibrary_pos_msnbase = "PRIMARY_NAME"
		String mz_col_preparelibrary_pos_msnbase = "mz"
		String which_mz_preparelibrary_pos_msnbase = "f"
		Float ncore_searchengine_library_pos_msnbase = 1
		Float ppm_create_library_pos_msnbase = 10
		Float ppm_output_pos_camera = 10
		Float rt_output_pos_camera = 5
		Boolean impute_output_pos_camera = true
		String type_column_output_pos_camera = "Class"
		String selected_type_output_pos_camera = "Sample"
		Boolean rename_output_pos_camera = true
		String rename_col_output_pos_camera = "rename"
		Boolean? only_report_with_id_output_pos_camera
		Boolean? combine_replicate_output_pos_camera
		String combine_replicate_column_output_pos_camera = "rep"
		Boolean log_output_pos_camera = true
		Float sample_coverage_output_pos_camera = 50
		String normalize_output_pos_camera = "1"
		String? database_csv_files_pos_cfmid
		Float ncore_pos_cfmid = 2
		String candidate_id_identification_pos_cfmid = "Identifier"
		String candidate_inchi_smiles_identification_pos_cfmid = "SMILES"
		String candidate_mass_identification_pos_cfmid = "MonoisotopicMass"
		String database_name_column_identification_pos_cfmid = "Name"
		String database_inchI_column_identification_pos_cfmid = "InChI"
		String? database_csv_files_pos_metfrag
		Float ncore_pos_metfrag = 2
		String database_csifingerid_pos_csifingerid = "hmdb"
		Float ncore_csifingerid_pos_csifingerid = 2
		Float timeout_csifingerid_pos_csifingerid = 600
		Float ppm_mapmsmstocamera_pos_msnbase = 10
		Float rt_mapmsmstocamera_pos_msnbase = 5
		Float precursorppm_msmstoparam_pos_msnbase = 10
		Float fragmentppm_msmstoparam_pos_msnbase = 20
		Float fragmentabs_msmstoparam_pos_msnbase = 0.05
		String database_msmstoparam_pos_msnbase = "LocalCSV"
		String mode_msmstoparam_pos_msnbase = "pos"
		String adductRules_msmstoparam_pos_msnbase = "primary"
		Float minPeaks_msmstoparam_pos_msnbase = 2
		Float sigma_group_pos_camera = 8
		Float perfwhm_group_pos_camera = 0.6
		String intval_group_pos_camera = "maxo"
		Float ppm_findaddcuts_pos_camera = 10
		String polarity_findaddcuts_pos_camera = "positive"
		Float maxcharge_findisotopes_pos_camera = 1
		Boolean? blank_filter_pos
		String method_blankfilter_pos_xcms = "max"
		String blank_blankfilter_pos_xcms = "Blank"
		String sample_blankfilter_pos_xcms = "Sample"
		String rest_blankfilter_pos_xcms = "T"
		Boolean? dilution_filter_pos
		String corto_dilutionfilter_pos_xcms = "0.5,1,2,4"
		String dilution_dilutionfilter_pos_xcms = "D1,D2,D3,D4"
		Float pvalue_dilutionfilter_pos_xcms = 0.05
		Float corcut_dilutionfilter_pos_xcms = -1
		String abs_dilutionfilter_pos_xcms = "F"
		Boolean? cv_filter_pos
		String qc_cvfilter_pos_xcms = "QC"
		Float cvcut_cvfilter_pos_xcms = 0.3
		String quantification_openms_xcms_pos = "xcms"
		String performIPO_pos = "none"
		Boolean? ipo_allSamples_pos
		String ipo_columnToSelect_pos = "Class"
		String ipo_valueToSelect_pos = "QC"
		String ipo_methodXset_pos = "centWave"
		Float? ipo_noise_l_pos
		Float? ipo_noise_h_pos
		Float ipo_snthresh_l_pos = 10
		Float ipo_snthresh_h_pos = 10
		String ipo_mzCenterFun_pos = "wMean"
		Float ipo_integrate_pos = 1
		Boolean? ipo_fitgauss_pos
		Float ipo_min_peakwidth_l_pos = 12
		Float ipo_min_peakwidth_h_pos = 28
		Float ipo_max_peakwidth_l_pos = 35
		Float ipo_max_peakwidth_h_pos = 65
		Float ipo_ppm_l_pos = 17
		Float ipo_ppm_h_pos = 32
		Float ipo_mzdiff_l_pos = -0.001
		Float ipo_mzdiff_h_pos = 0.01
		Float ipo_charge_camera_pos = 1
		Float ipo_max_ppm_camera_pos = 10
		Float ipo_prefilter_l_l_pos = 3
		Float ipo_prefilter_l_h_pos = 3
		Float ipo_prefilter_h_l_pos = 100
		Float ipo_prefilter_h_h_pos = 100
		Float ipo_ncores_pos = 5
		Float? ipo_gapInit_l_pos
		Float ipo_gapInit_h_pos = 0.4
		Float ipo_gapExtend_l_pos = 2.1
		Float ipo_gapExtend_h_pos = 2.7
		Float ipo_profStep_l_pos = 0.7
		Float ipo_profStep_h_pos = 1
		Float ipo_response_l_pos = 1
		Float ipo_response_h_pos = 1
		Float ipo_factorDiag_l_pos = 2
		Float ipo_factorDiag_h_pos = 2
		Float ipo_factorGap_l_pos = 1
		Float ipo_factorGap_h_pos = 1
		Float? ipo_localAlignment_pos
		Float ipo_bw_l_pos = 22
		Float ipo_bw_h_pos = 38
		Float ipo_minfrac_l_pos = 0.3
		Float ipo_minfrac_h_pos = 0.7
		Float ipo_mzwid_l_pos = 0.015
		Float ipo_mzwid_h_pos = 0.035
		Float ipo_minsamp_l_pos = 1
		Float ipo_minsamp_h_pos = 1
		Float ipo_max_l_pos = 50
		Float ipo_max_h_pos = 50
		String ipo_distFunc_pos = "cor_opt"
		String ipo_methodRT_pos = "obiwarp"
		Float masstrace_ppm_pos_xcms = 10
		Float peakwidthlow_quant_pos_xcms = 5
		Float peakwidthhigh_quant_pos_xcms = 30
		Float noise_quant_pos_xcms = 1000
		Float mzdiff_quant_pos_xcms = -0.001
		Float snthresh_quant_pos_xcms = 10
		Float prefilter_quant_pos_xcms = 3
		Float value_of_prefilter_quant_pos_xcms = 100
		String mzCenterFun_quant_pos_xcms = "wMean"
		Float integrate_quant_pos_xcms = 1
		Boolean? fitgauss_quant_pos_xcms
		String phenodatacolumn_quant_pos = "Class"
		String sampleclass_quant_pos_xcms = "Sample"
		Float profStep_align_N1_pos_xcms = 1
		String center_align_N1_pos_xcms = "NULL"
		Float response_align_N1_pos_xcms = 1
		String distFunc_align_N1_pos_xcms = "cor_opt"
		String gapInit_align_N1_pos_xcms = "NULL"
		String gapExtend_align_N1_pos_xcms = "NULL"
		Float factorDiag_align_N1_pos_xcms = 2
		Float factorGap_align_N1_pos_xcms = 1
		Float? localAlignment_align_N1_pos_xcms
		Float bandwidth_group_N1_pos_xcms = 15
		Float mzwid_group_N1_pos_xcms = 0.005
		Float minfrac_group_N1_pos_xcms = 0.5
		Float minsamp_group_N1_pos_xcms = 1
		Float max_group_N1_pos_xcms = 50
		Boolean? library_charactrized_neg
		String? library_charactrization_file_neg
		String? quant_library_mzml_files_neg
		String? id_library_mzml_files_neg
		String? library_description_neg
		Boolean? library_charactrized_pos
		String? library_charactrization_file_pos
		String? quant_library_mzml_files_pos
		String? id_library_mzml_files_pos
		String? library_description_pos
		String? id_mzml_files_pos
		String? id_mzml_files_neg
		Boolean? publishDir_intermediate
		Boolean? perform_identification
		Boolean? perform_identification_metfrag
		Boolean? perform_identification_csifingerid
		Boolean? perform_identification_cfmid
		Boolean? perform_identification_internal_library
		String type_of_ionization = "pos"
		Boolean? need_centroiding
		String peakpicker_ini_file_pos_openms = "$baseDir/assets/openms/openms_peak_picker_ini_pos.ini"
		String peakpicker_ini_file_neg_openms = "$baseDir/assets/openms/openms_peak_picker_ini_neg.ini"
		String featurefinder_ini_pos_openms = "$baseDir/assets/openms/openms_feature_finder_metabo_ini_pos.ini"
		String featurefinder_ini_neg_openms = "$baseDir/assets/openms/openms_feature_finder_metabo_ini_neg.ini"
		String peakpicker_ini_file_library_pos_openms = "$baseDir/assets/openms/openms_peak_picker_lib_ini_pos.ini"
		String peakpicker_ini_file_library_neg_openms = "$baseDir/assets/openms/openms_peak_picker_lib_ini_neg.ini"
		String featurefinder_ini_library_pos_openms = "$baseDir/assets/openms/openms_feature_finder_metabo_lib_ini_pos.ini"
		String featurefinder_ini_library_neg_openms = "$baseDir/assets/openms/openms_feature_finder_metabo_lib_ini_neg.ini"
		File samplesheet
		String? quant_mzml_files_neg
		String? phenotype_design_pos
		String? phenotype_design_neg
		Boolean? help
		String publish_dir_mode = "copy"
		Boolean validate_params = true
		String? email_on_fail
		Boolean? plaintext_email
		Boolean? monochrome_logs
		String tracedir = "./results/pipeline_info"
		Boolean? show_hidden_params
		Float max_cpus = 16
		String max_memory = "128.GB"
		String max_time = "240.h"
		String custom_config_version = "master"
		String custom_config_base = "https://raw.githubusercontent.com/nf-core/configs/master"
		String? hostnames
		String? config_profile_name
		String? config_profile_description
		String? config_profile_contact
		String? config_profile_url

	}

	call make_uuid as mkuuid {}
	call touch_uuid as thuuid {
		input:
			outputbucket = mkuuid.uuid
	}
	call run_nfcoretask as nfcoretask {
		input:
			outdir = outdir,
			email = email,
			quantification_openms_xcms_library_neg = quantification_openms_xcms_library_neg,
			performIPO_library_neg = performIPO_library_neg,
			ipo_methodXset_library_neg = ipo_methodXset_library_neg,
			ipo_noise_l_library_neg = ipo_noise_l_library_neg,
			ipo_noise_h_library_neg = ipo_noise_h_library_neg,
			ipo_snthresh_l_library_neg = ipo_snthresh_l_library_neg,
			ipo_snthresh_h_library_neg = ipo_snthresh_h_library_neg,
			ipo_mzCenterFun_library_neg = ipo_mzCenterFun_library_neg,
			ipo_integrate_library_neg = ipo_integrate_library_neg,
			ipo_fitgauss_library_neg = ipo_fitgauss_library_neg,
			ipo_min_peakwidth_l_library_neg = ipo_min_peakwidth_l_library_neg,
			ipo_min_peakwidth_h_library_neg = ipo_min_peakwidth_h_library_neg,
			ipo_max_peakwidth_l_library_neg = ipo_max_peakwidth_l_library_neg,
			ipo_max_peakwidth_h_library_neg = ipo_max_peakwidth_h_library_neg,
			ipo_ppm_l_library_neg = ipo_ppm_l_library_neg,
			ipo_ppm_h_library_neg = ipo_ppm_h_library_neg,
			ipo_mzdiff_l_library_neg = ipo_mzdiff_l_library_neg,
			ipo_mzdiff_h_library_neg = ipo_mzdiff_h_library_neg,
			ipo_charge_camera_library_neg = ipo_charge_camera_library_neg,
			ipo_max_ppm_camera_library_neg = ipo_max_ppm_camera_library_neg,
			ipo_prefilter_l_l_library_neg = ipo_prefilter_l_l_library_neg,
			ipo_prefilter_l_h_library_neg = ipo_prefilter_l_h_library_neg,
			ipo_prefilter_h_l_library_neg = ipo_prefilter_h_l_library_neg,
			ipo_prefilter_h_h_library_neg = ipo_prefilter_h_h_library_neg,
			ipo_ncores_library_neg = ipo_ncores_library_neg,
			ipo_gapInit_l_library_neg = ipo_gapInit_l_library_neg,
			ipo_gapInit_h_library_neg = ipo_gapInit_h_library_neg,
			ipo_gapExtend_l_library_neg = ipo_gapExtend_l_library_neg,
			ipo_gapExtend_h_library_neg = ipo_gapExtend_h_library_neg,
			ipo_profStep_l_library_neg = ipo_profStep_l_library_neg,
			ipo_profStep_h_library_neg = ipo_profStep_h_library_neg,
			ipo_response_l_library_neg = ipo_response_l_library_neg,
			ipo_response_h_library_neg = ipo_response_h_library_neg,
			ipo_factorDiag_l_library_neg = ipo_factorDiag_l_library_neg,
			ipo_factorDiag_h_library_neg = ipo_factorDiag_h_library_neg,
			ipo_factorGap_l_library_neg = ipo_factorGap_l_library_neg,
			ipo_factorGap_h_library_neg = ipo_factorGap_h_library_neg,
			ipo_localAlignment_library_neg = ipo_localAlignment_library_neg,
			ipo_bw_l_library_neg = ipo_bw_l_library_neg,
			ipo_bw_h_library_neg = ipo_bw_h_library_neg,
			ipo_minfrac_l_library_neg = ipo_minfrac_l_library_neg,
			ipo_minfrac_h_library_neg = ipo_minfrac_h_library_neg,
			ipo_mzwid_l_library_neg = ipo_mzwid_l_library_neg,
			ipo_mzwid_h_library_neg = ipo_mzwid_h_library_neg,
			ipo_minsamp_l_library_neg = ipo_minsamp_l_library_neg,
			ipo_minsamp_h_library_neg = ipo_minsamp_h_library_neg,
			ipo_max_l_library_neg = ipo_max_l_library_neg,
			ipo_max_h_library_neg = ipo_max_h_library_neg,
			ipo_distFunc_library_neg = ipo_distFunc_library_neg,
			ipo_methodRT_library_neg = ipo_methodRT_library_neg,
			masstrace_ppm_library_neg_xcms = masstrace_ppm_library_neg_xcms,
			peakwidthlow_quant_library_neg_xcms = peakwidthlow_quant_library_neg_xcms,
			peakwidthhigh_quant_library_neg_xcms = peakwidthhigh_quant_library_neg_xcms,
			noise_quant_library_neg_xcms = noise_quant_library_neg_xcms,
			mzdiff_quant_library_neg_xcms = mzdiff_quant_library_neg_xcms,
			snthresh_quant_library_neg_xcms = snthresh_quant_library_neg_xcms,
			prefilter_quant_library_neg_xcms = prefilter_quant_library_neg_xcms,
			value_of_prefilter_quant_library_neg_xcms = value_of_prefilter_quant_library_neg_xcms,
			mzCenterFun_quant_library_neg_xcms = mzCenterFun_quant_library_neg_xcms,
			integrate_quant_library_neg_xcms = integrate_quant_library_neg_xcms,
			fitgauss_quant_library_neg_xcms = fitgauss_quant_library_neg_xcms,
			sampleclass_quant_library_neg_xcms = sampleclass_quant_library_neg_xcms,
			sigma_group_library_neg_camera = sigma_group_library_neg_camera,
			perfwhm_group_library_neg_camera = perfwhm_group_library_neg_camera,
			intval_group_library_neg_camera = intval_group_library_neg_camera,
			ppm_findaddcuts_library_neg_camera = ppm_findaddcuts_library_neg_camera,
			polarity_findaddcuts_library_neg_camera = polarity_findaddcuts_library_neg_camera,
			maxcharge_findisotopes_library_neg_camera = maxcharge_findisotopes_library_neg_camera,
			ppm_mapmsmstocamera_library_neg_msnbase = ppm_mapmsmstocamera_library_neg_msnbase,
			rt_mapmsmstocamera_library_neg_msnbase = rt_mapmsmstocamera_library_neg_msnbase,
			raw_file_name_preparelibrary_neg_msnbase = raw_file_name_preparelibrary_neg_msnbase,
			compund_id_preparelibrary_neg_msnbase = compund_id_preparelibrary_neg_msnbase,
			compound_name_preparelibrary_neg_msnbase = compound_name_preparelibrary_neg_msnbase,
			mz_col_preparelibrary_neg_msnbase = mz_col_preparelibrary_neg_msnbase,
			which_mz_preparelibrary_neg_msnbase = which_mz_preparelibrary_neg_msnbase,
			ncore_searchengine_library_neg_msnbase = ncore_searchengine_library_neg_msnbase,
			ppm_create_library_neg_msnbase = ppm_create_library_neg_msnbase,
			ppm_output_neg_camera = ppm_output_neg_camera,
			rt_output_neg_camera = rt_output_neg_camera,
			impute_output_neg_camera = impute_output_neg_camera,
			type_column_output_neg_camera = type_column_output_neg_camera,
			selected_type_output_neg_camera = selected_type_output_neg_camera,
			rename_output_neg_camera = rename_output_neg_camera,
			rename_col_output_neg_camera = rename_col_output_neg_camera,
			only_report_with_id_output_neg_camera = only_report_with_id_output_neg_camera,
			combine_replicate_output_neg_camera = combine_replicate_output_neg_camera,
			combine_replicate_column_output_neg_camera = combine_replicate_column_output_neg_camera,
			log_output_neg_camera = log_output_neg_camera,
			sample_coverage_output_neg_camera = sample_coverage_output_neg_camera,
			normalize_output_neg_camera = normalize_output_neg_camera,
			database_csv_files_neg_cfmid = database_csv_files_neg_cfmid,
			ncore_neg_cfmid = ncore_neg_cfmid,
			candidate_id_identification_neg_cfmid = candidate_id_identification_neg_cfmid,
			candidate_inchi_smiles_identification_neg_cfmid = candidate_inchi_smiles_identification_neg_cfmid,
			candidate_mass_identification_neg_cfmid = candidate_mass_identification_neg_cfmid,
			database_name_column_identification_neg_cfmid = database_name_column_identification_neg_cfmid,
			database_inchI_column_identification_neg_cfmid = database_inchI_column_identification_neg_cfmid,
			database_csv_files_neg_metfrag = database_csv_files_neg_metfrag,
			ncore_neg_metfrag = ncore_neg_metfrag,
			database_csifingerid_neg_csifingerid = database_csifingerid_neg_csifingerid,
			ncore_csifingerid_neg_csifingerid = ncore_csifingerid_neg_csifingerid,
			timeout_csifingerid_neg_csifingerid = timeout_csifingerid_neg_csifingerid,
			ppm_mapmsmstocamera_neg_msnbase = ppm_mapmsmstocamera_neg_msnbase,
			rt_mapmsmstocamera_neg_msnbase = rt_mapmsmstocamera_neg_msnbase,
			precursorppm_msmstoparam_neg_msnbase = precursorppm_msmstoparam_neg_msnbase,
			fragmentppm_msmstoparam_neg_msnbase = fragmentppm_msmstoparam_neg_msnbase,
			fragmentabs_msmstoparam_neg_msnbase = fragmentabs_msmstoparam_neg_msnbase,
			database_msmstoparam_neg_msnbase = database_msmstoparam_neg_msnbase,
			mode_msmstoparam_neg_msnbase = mode_msmstoparam_neg_msnbase,
			adductRules_msmstoparam_neg_msnbase = adductRules_msmstoparam_neg_msnbase,
			minPeaks_msmstoparam_neg_msnbase = minPeaks_msmstoparam_neg_msnbase,
			sigma_group_neg_camera = sigma_group_neg_camera,
			perfwhm_group_neg_camera = perfwhm_group_neg_camera,
			intval_group_neg_camera = intval_group_neg_camera,
			ppm_findaddcuts_neg_camera = ppm_findaddcuts_neg_camera,
			polarity_findaddcuts_neg_camera = polarity_findaddcuts_neg_camera,
			maxcharge_findisotopes_neg_camera = maxcharge_findisotopes_neg_camera,
			blank_filter_neg = blank_filter_neg,
			method_blankfilter_neg_xcms = method_blankfilter_neg_xcms,
			blank_blankfilter_neg_xcms = blank_blankfilter_neg_xcms,
			sample_blankfilter_neg_xcms = sample_blankfilter_neg_xcms,
			rest_blankfilter_neg_xcms = rest_blankfilter_neg_xcms,
			dilution_filter_neg = dilution_filter_neg,
			corto_dilutionfilter_neg_xcms = corto_dilutionfilter_neg_xcms,
			dilution_dilutionfilter_neg_xcms = dilution_dilutionfilter_neg_xcms,
			pvalue_dilutionfilter_neg_xcms = pvalue_dilutionfilter_neg_xcms,
			corcut_dilutionfilter_neg_xcms = corcut_dilutionfilter_neg_xcms,
			abs_dilutionfilter_neg_xcms = abs_dilutionfilter_neg_xcms,
			cv_filter_neg = cv_filter_neg,
			qc_cvfilter_neg_xcms = qc_cvfilter_neg_xcms,
			cvcut_cvfilter_neg_xcms = cvcut_cvfilter_neg_xcms,
			quantification_openms_xcms_neg = quantification_openms_xcms_neg,
			performIPO_neg = performIPO_neg,
			ipo_allSamples_neg = ipo_allSamples_neg,
			ipo_columnToSelect_neg = ipo_columnToSelect_neg,
			ipo_valueToSelect_neg = ipo_valueToSelect_neg,
			ipo_methodXset_neg = ipo_methodXset_neg,
			ipo_noise_l_neg = ipo_noise_l_neg,
			ipo_noise_h_neg = ipo_noise_h_neg,
			ipo_snthresh_l_neg = ipo_snthresh_l_neg,
			ipo_snthresh_h_neg = ipo_snthresh_h_neg,
			ipo_mzCenterFun_neg = ipo_mzCenterFun_neg,
			ipo_integrate_neg = ipo_integrate_neg,
			ipo_fitgauss_neg = ipo_fitgauss_neg,
			ipo_min_peakwidth_l_neg = ipo_min_peakwidth_l_neg,
			ipo_min_peakwidth_h_neg = ipo_min_peakwidth_h_neg,
			ipo_max_peakwidth_l_neg = ipo_max_peakwidth_l_neg,
			ipo_max_peakwidth_h_neg = ipo_max_peakwidth_h_neg,
			ipo_ppm_l_neg = ipo_ppm_l_neg,
			ipo_ppm_h_neg = ipo_ppm_h_neg,
			ipo_mzdiff_l_neg = ipo_mzdiff_l_neg,
			ipo_mzdiff_h_neg = ipo_mzdiff_h_neg,
			ipo_charge_camera_neg = ipo_charge_camera_neg,
			ipo_max_ppm_camera_neg = ipo_max_ppm_camera_neg,
			ipo_prefilter_l_l_neg = ipo_prefilter_l_l_neg,
			ipo_prefilter_l_h_neg = ipo_prefilter_l_h_neg,
			ipo_prefilter_h_l_neg = ipo_prefilter_h_l_neg,
			ipo_prefilter_h_h_neg = ipo_prefilter_h_h_neg,
			ipo_ncores_neg = ipo_ncores_neg,
			ipo_gapInit_l_neg = ipo_gapInit_l_neg,
			ipo_gapInit_h_neg = ipo_gapInit_h_neg,
			ipo_gapExtend_l_neg = ipo_gapExtend_l_neg,
			ipo_gapExtend_h_neg = ipo_gapExtend_h_neg,
			ipo_profStep_l_neg = ipo_profStep_l_neg,
			ipo_profStep_h_neg = ipo_profStep_h_neg,
			ipo_response_l_neg = ipo_response_l_neg,
			ipo_response_h_neg = ipo_response_h_neg,
			ipo_factorDiag_l_neg = ipo_factorDiag_l_neg,
			ipo_factorDiag_h_neg = ipo_factorDiag_h_neg,
			ipo_factorGap_l_neg = ipo_factorGap_l_neg,
			ipo_factorGap_h_neg = ipo_factorGap_h_neg,
			ipo_localAlignment_neg = ipo_localAlignment_neg,
			ipo_bw_l_neg = ipo_bw_l_neg,
			ipo_bw_h_neg = ipo_bw_h_neg,
			ipo_minfrac_l_neg = ipo_minfrac_l_neg,
			ipo_minfrac_h_neg = ipo_minfrac_h_neg,
			ipo_mzwid_l_neg = ipo_mzwid_l_neg,
			ipo_mzwid_h_neg = ipo_mzwid_h_neg,
			ipo_minsamp_l_neg = ipo_minsamp_l_neg,
			ipo_minsamp_h_neg = ipo_minsamp_h_neg,
			ipo_max_l_neg = ipo_max_l_neg,
			ipo_max_h_neg = ipo_max_h_neg,
			ipo_distFunc_neg = ipo_distFunc_neg,
			ipo_methodRT_neg = ipo_methodRT_neg,
			masstrace_ppm_neg_xcms = masstrace_ppm_neg_xcms,
			peakwidthlow_quant_neg_xcms = peakwidthlow_quant_neg_xcms,
			peakwidthhigh_quant_neg_xcms = peakwidthhigh_quant_neg_xcms,
			noise_quant_neg_xcms = noise_quant_neg_xcms,
			mzdiff_quant_neg_xcms = mzdiff_quant_neg_xcms,
			snthresh_quant_neg_xcms = snthresh_quant_neg_xcms,
			prefilter_quant_neg_xcms = prefilter_quant_neg_xcms,
			value_of_prefilter_quant_neg_xcms = value_of_prefilter_quant_neg_xcms,
			mzCenterFun_quant_neg_xcms = mzCenterFun_quant_neg_xcms,
			integrate_quant_neg_xcms = integrate_quant_neg_xcms,
			fitgauss_quant_neg_xcms = fitgauss_quant_neg_xcms,
			phenodatacolumn_quant_neg = phenodatacolumn_quant_neg,
			sampleclass_quant_neg_xcms = sampleclass_quant_neg_xcms,
			profStep_align_N1_neg_xcms = profStep_align_N1_neg_xcms,
			center_align_N1_neg_xcms = center_align_N1_neg_xcms,
			response_align_N1_neg_xcms = response_align_N1_neg_xcms,
			distFunc_align_N1_neg_xcms = distFunc_align_N1_neg_xcms,
			gapInit_align_N1_neg_xcms = gapInit_align_N1_neg_xcms,
			gapExtend_align_N1_neg_xcms = gapExtend_align_N1_neg_xcms,
			factorDiag_align_N1_neg_xcms = factorDiag_align_N1_neg_xcms,
			factorGap_align_N1_neg_xcms = factorGap_align_N1_neg_xcms,
			localAlignment_align_N1_neg_xcms = localAlignment_align_N1_neg_xcms,
			bandwidth_group_N1_neg_xcms = bandwidth_group_N1_neg_xcms,
			mzwid_group_N1_neg_xcms = mzwid_group_N1_neg_xcms,
			minfrac_group_N1_neg_xcms = minfrac_group_N1_neg_xcms,
			minsamp_group_N1_neg_xcms = minsamp_group_N1_neg_xcms,
			max_group_N1_neg_xcms = max_group_N1_neg_xcms,
			quantification_openms_xcms_library_pos = quantification_openms_xcms_library_pos,
			performIPO_library_pos = performIPO_library_pos,
			ipo_methodXset_library_pos = ipo_methodXset_library_pos,
			ipo_noise_l_library_pos = ipo_noise_l_library_pos,
			ipo_noise_h_library_pos = ipo_noise_h_library_pos,
			ipo_snthresh_l_library_pos = ipo_snthresh_l_library_pos,
			ipo_snthresh_h_library_pos = ipo_snthresh_h_library_pos,
			ipo_mzCenterFun_library_pos = ipo_mzCenterFun_library_pos,
			ipo_integrate_library_pos = ipo_integrate_library_pos,
			ipo_fitgauss_library_pos = ipo_fitgauss_library_pos,
			ipo_min_peakwidth_l_library_pos = ipo_min_peakwidth_l_library_pos,
			ipo_min_peakwidth_h_library_pos = ipo_min_peakwidth_h_library_pos,
			ipo_max_peakwidth_l_library_pos = ipo_max_peakwidth_l_library_pos,
			ipo_max_peakwidth_h_library_pos = ipo_max_peakwidth_h_library_pos,
			ipo_ppm_l_library_pos = ipo_ppm_l_library_pos,
			ipo_ppm_h_library_pos = ipo_ppm_h_library_pos,
			ipo_mzdiff_l_library_pos = ipo_mzdiff_l_library_pos,
			ipo_mzdiff_h_library_pos = ipo_mzdiff_h_library_pos,
			ipo_charge_camera_library_pos = ipo_charge_camera_library_pos,
			ipo_max_ppm_camera_library_pos = ipo_max_ppm_camera_library_pos,
			ipo_prefilter_l_l_library_pos = ipo_prefilter_l_l_library_pos,
			ipo_prefilter_l_h_library_pos = ipo_prefilter_l_h_library_pos,
			ipo_prefilter_h_l_library_pos = ipo_prefilter_h_l_library_pos,
			ipo_prefilter_h_h_library_pos = ipo_prefilter_h_h_library_pos,
			ipo_ncores_library_pos = ipo_ncores_library_pos,
			ipo_gapInit_l_library_pos = ipo_gapInit_l_library_pos,
			ipo_gapInit_h_library_pos = ipo_gapInit_h_library_pos,
			ipo_gapExtend_l_library_pos = ipo_gapExtend_l_library_pos,
			ipo_gapExtend_h_library_pos = ipo_gapExtend_h_library_pos,
			ipo_profStep_l_library_pos = ipo_profStep_l_library_pos,
			ipo_profStep_h_library_pos = ipo_profStep_h_library_pos,
			ipo_response_l_library_pos = ipo_response_l_library_pos,
			ipo_response_h_library_pos = ipo_response_h_library_pos,
			ipo_factorDiag_l_library_pos = ipo_factorDiag_l_library_pos,
			ipo_factorDiag_h_library_pos = ipo_factorDiag_h_library_pos,
			ipo_factorGap_l_library_pos = ipo_factorGap_l_library_pos,
			ipo_factorGap_h_library_pos = ipo_factorGap_h_library_pos,
			ipo_localAlignment_library_pos = ipo_localAlignment_library_pos,
			ipo_bw_l_library_pos = ipo_bw_l_library_pos,
			ipo_bw_h_library_pos = ipo_bw_h_library_pos,
			ipo_minfrac_l_library_pos = ipo_minfrac_l_library_pos,
			ipo_minfrac_h_library_pos = ipo_minfrac_h_library_pos,
			ipo_mzwid_l_library_pos = ipo_mzwid_l_library_pos,
			ipo_mzwid_h_library_pos = ipo_mzwid_h_library_pos,
			ipo_minsamp_l_library_pos = ipo_minsamp_l_library_pos,
			ipo_minsamp_h_library_pos = ipo_minsamp_h_library_pos,
			ipo_max_l_library_pos = ipo_max_l_library_pos,
			ipo_max_h_library_pos = ipo_max_h_library_pos,
			ipo_distFunc_library_pos = ipo_distFunc_library_pos,
			ipo_methodRT_library_pos = ipo_methodRT_library_pos,
			masstrace_ppm_library_pos_xcms = masstrace_ppm_library_pos_xcms,
			peakwidthlow_quant_library_pos_xcms = peakwidthlow_quant_library_pos_xcms,
			peakwidthhigh_quant_library_pos_xcms = peakwidthhigh_quant_library_pos_xcms,
			noise_quant_library_pos_xcms = noise_quant_library_pos_xcms,
			mzdiff_quant_library_pos_xcms = mzdiff_quant_library_pos_xcms,
			snthresh_quant_library_pos_xcms = snthresh_quant_library_pos_xcms,
			prefilter_quant_library_pos_xcms = prefilter_quant_library_pos_xcms,
			value_of_prefilter_quant_library_pos_xcms = value_of_prefilter_quant_library_pos_xcms,
			mzCenterFun_quant_library_pos_xcms = mzCenterFun_quant_library_pos_xcms,
			integrate_quant_library_pos_xcms = integrate_quant_library_pos_xcms,
			fitgauss_quant_library_pos_xcms = fitgauss_quant_library_pos_xcms,
			sampleclass_quant_library_pos_xcms = sampleclass_quant_library_pos_xcms,
			sigma_group_library_pos_camera = sigma_group_library_pos_camera,
			perfwhm_group_library_pos_camera = perfwhm_group_library_pos_camera,
			intval_group_library_pos_camera = intval_group_library_pos_camera,
			ppm_findaddcuts_library_pos_camera = ppm_findaddcuts_library_pos_camera,
			polarity_findaddcuts_library_pos_camera = polarity_findaddcuts_library_pos_camera,
			maxcharge_findisotopes_library_pos_camera = maxcharge_findisotopes_library_pos_camera,
			ppm_mapmsmstocamera_library_pos_msnbase = ppm_mapmsmstocamera_library_pos_msnbase,
			rt_mapmsmstocamera_library_pos_msnbase = rt_mapmsmstocamera_library_pos_msnbase,
			raw_file_name_preparelibrary_pos_msnbase = raw_file_name_preparelibrary_pos_msnbase,
			compund_id_preparelibrary_pos_msnbase = compund_id_preparelibrary_pos_msnbase,
			compound_name_preparelibrary_pos_msnbase = compound_name_preparelibrary_pos_msnbase,
			mz_col_preparelibrary_pos_msnbase = mz_col_preparelibrary_pos_msnbase,
			which_mz_preparelibrary_pos_msnbase = which_mz_preparelibrary_pos_msnbase,
			ncore_searchengine_library_pos_msnbase = ncore_searchengine_library_pos_msnbase,
			ppm_create_library_pos_msnbase = ppm_create_library_pos_msnbase,
			ppm_output_pos_camera = ppm_output_pos_camera,
			rt_output_pos_camera = rt_output_pos_camera,
			impute_output_pos_camera = impute_output_pos_camera,
			type_column_output_pos_camera = type_column_output_pos_camera,
			selected_type_output_pos_camera = selected_type_output_pos_camera,
			rename_output_pos_camera = rename_output_pos_camera,
			rename_col_output_pos_camera = rename_col_output_pos_camera,
			only_report_with_id_output_pos_camera = only_report_with_id_output_pos_camera,
			combine_replicate_output_pos_camera = combine_replicate_output_pos_camera,
			combine_replicate_column_output_pos_camera = combine_replicate_column_output_pos_camera,
			log_output_pos_camera = log_output_pos_camera,
			sample_coverage_output_pos_camera = sample_coverage_output_pos_camera,
			normalize_output_pos_camera = normalize_output_pos_camera,
			database_csv_files_pos_cfmid = database_csv_files_pos_cfmid,
			ncore_pos_cfmid = ncore_pos_cfmid,
			candidate_id_identification_pos_cfmid = candidate_id_identification_pos_cfmid,
			candidate_inchi_smiles_identification_pos_cfmid = candidate_inchi_smiles_identification_pos_cfmid,
			candidate_mass_identification_pos_cfmid = candidate_mass_identification_pos_cfmid,
			database_name_column_identification_pos_cfmid = database_name_column_identification_pos_cfmid,
			database_inchI_column_identification_pos_cfmid = database_inchI_column_identification_pos_cfmid,
			database_csv_files_pos_metfrag = database_csv_files_pos_metfrag,
			ncore_pos_metfrag = ncore_pos_metfrag,
			database_csifingerid_pos_csifingerid = database_csifingerid_pos_csifingerid,
			ncore_csifingerid_pos_csifingerid = ncore_csifingerid_pos_csifingerid,
			timeout_csifingerid_pos_csifingerid = timeout_csifingerid_pos_csifingerid,
			ppm_mapmsmstocamera_pos_msnbase = ppm_mapmsmstocamera_pos_msnbase,
			rt_mapmsmstocamera_pos_msnbase = rt_mapmsmstocamera_pos_msnbase,
			precursorppm_msmstoparam_pos_msnbase = precursorppm_msmstoparam_pos_msnbase,
			fragmentppm_msmstoparam_pos_msnbase = fragmentppm_msmstoparam_pos_msnbase,
			fragmentabs_msmstoparam_pos_msnbase = fragmentabs_msmstoparam_pos_msnbase,
			database_msmstoparam_pos_msnbase = database_msmstoparam_pos_msnbase,
			mode_msmstoparam_pos_msnbase = mode_msmstoparam_pos_msnbase,
			adductRules_msmstoparam_pos_msnbase = adductRules_msmstoparam_pos_msnbase,
			minPeaks_msmstoparam_pos_msnbase = minPeaks_msmstoparam_pos_msnbase,
			sigma_group_pos_camera = sigma_group_pos_camera,
			perfwhm_group_pos_camera = perfwhm_group_pos_camera,
			intval_group_pos_camera = intval_group_pos_camera,
			ppm_findaddcuts_pos_camera = ppm_findaddcuts_pos_camera,
			polarity_findaddcuts_pos_camera = polarity_findaddcuts_pos_camera,
			maxcharge_findisotopes_pos_camera = maxcharge_findisotopes_pos_camera,
			blank_filter_pos = blank_filter_pos,
			method_blankfilter_pos_xcms = method_blankfilter_pos_xcms,
			blank_blankfilter_pos_xcms = blank_blankfilter_pos_xcms,
			sample_blankfilter_pos_xcms = sample_blankfilter_pos_xcms,
			rest_blankfilter_pos_xcms = rest_blankfilter_pos_xcms,
			dilution_filter_pos = dilution_filter_pos,
			corto_dilutionfilter_pos_xcms = corto_dilutionfilter_pos_xcms,
			dilution_dilutionfilter_pos_xcms = dilution_dilutionfilter_pos_xcms,
			pvalue_dilutionfilter_pos_xcms = pvalue_dilutionfilter_pos_xcms,
			corcut_dilutionfilter_pos_xcms = corcut_dilutionfilter_pos_xcms,
			abs_dilutionfilter_pos_xcms = abs_dilutionfilter_pos_xcms,
			cv_filter_pos = cv_filter_pos,
			qc_cvfilter_pos_xcms = qc_cvfilter_pos_xcms,
			cvcut_cvfilter_pos_xcms = cvcut_cvfilter_pos_xcms,
			quantification_openms_xcms_pos = quantification_openms_xcms_pos,
			performIPO_pos = performIPO_pos,
			ipo_allSamples_pos = ipo_allSamples_pos,
			ipo_columnToSelect_pos = ipo_columnToSelect_pos,
			ipo_valueToSelect_pos = ipo_valueToSelect_pos,
			ipo_methodXset_pos = ipo_methodXset_pos,
			ipo_noise_l_pos = ipo_noise_l_pos,
			ipo_noise_h_pos = ipo_noise_h_pos,
			ipo_snthresh_l_pos = ipo_snthresh_l_pos,
			ipo_snthresh_h_pos = ipo_snthresh_h_pos,
			ipo_mzCenterFun_pos = ipo_mzCenterFun_pos,
			ipo_integrate_pos = ipo_integrate_pos,
			ipo_fitgauss_pos = ipo_fitgauss_pos,
			ipo_min_peakwidth_l_pos = ipo_min_peakwidth_l_pos,
			ipo_min_peakwidth_h_pos = ipo_min_peakwidth_h_pos,
			ipo_max_peakwidth_l_pos = ipo_max_peakwidth_l_pos,
			ipo_max_peakwidth_h_pos = ipo_max_peakwidth_h_pos,
			ipo_ppm_l_pos = ipo_ppm_l_pos,
			ipo_ppm_h_pos = ipo_ppm_h_pos,
			ipo_mzdiff_l_pos = ipo_mzdiff_l_pos,
			ipo_mzdiff_h_pos = ipo_mzdiff_h_pos,
			ipo_charge_camera_pos = ipo_charge_camera_pos,
			ipo_max_ppm_camera_pos = ipo_max_ppm_camera_pos,
			ipo_prefilter_l_l_pos = ipo_prefilter_l_l_pos,
			ipo_prefilter_l_h_pos = ipo_prefilter_l_h_pos,
			ipo_prefilter_h_l_pos = ipo_prefilter_h_l_pos,
			ipo_prefilter_h_h_pos = ipo_prefilter_h_h_pos,
			ipo_ncores_pos = ipo_ncores_pos,
			ipo_gapInit_l_pos = ipo_gapInit_l_pos,
			ipo_gapInit_h_pos = ipo_gapInit_h_pos,
			ipo_gapExtend_l_pos = ipo_gapExtend_l_pos,
			ipo_gapExtend_h_pos = ipo_gapExtend_h_pos,
			ipo_profStep_l_pos = ipo_profStep_l_pos,
			ipo_profStep_h_pos = ipo_profStep_h_pos,
			ipo_response_l_pos = ipo_response_l_pos,
			ipo_response_h_pos = ipo_response_h_pos,
			ipo_factorDiag_l_pos = ipo_factorDiag_l_pos,
			ipo_factorDiag_h_pos = ipo_factorDiag_h_pos,
			ipo_factorGap_l_pos = ipo_factorGap_l_pos,
			ipo_factorGap_h_pos = ipo_factorGap_h_pos,
			ipo_localAlignment_pos = ipo_localAlignment_pos,
			ipo_bw_l_pos = ipo_bw_l_pos,
			ipo_bw_h_pos = ipo_bw_h_pos,
			ipo_minfrac_l_pos = ipo_minfrac_l_pos,
			ipo_minfrac_h_pos = ipo_minfrac_h_pos,
			ipo_mzwid_l_pos = ipo_mzwid_l_pos,
			ipo_mzwid_h_pos = ipo_mzwid_h_pos,
			ipo_minsamp_l_pos = ipo_minsamp_l_pos,
			ipo_minsamp_h_pos = ipo_minsamp_h_pos,
			ipo_max_l_pos = ipo_max_l_pos,
			ipo_max_h_pos = ipo_max_h_pos,
			ipo_distFunc_pos = ipo_distFunc_pos,
			ipo_methodRT_pos = ipo_methodRT_pos,
			masstrace_ppm_pos_xcms = masstrace_ppm_pos_xcms,
			peakwidthlow_quant_pos_xcms = peakwidthlow_quant_pos_xcms,
			peakwidthhigh_quant_pos_xcms = peakwidthhigh_quant_pos_xcms,
			noise_quant_pos_xcms = noise_quant_pos_xcms,
			mzdiff_quant_pos_xcms = mzdiff_quant_pos_xcms,
			snthresh_quant_pos_xcms = snthresh_quant_pos_xcms,
			prefilter_quant_pos_xcms = prefilter_quant_pos_xcms,
			value_of_prefilter_quant_pos_xcms = value_of_prefilter_quant_pos_xcms,
			mzCenterFun_quant_pos_xcms = mzCenterFun_quant_pos_xcms,
			integrate_quant_pos_xcms = integrate_quant_pos_xcms,
			fitgauss_quant_pos_xcms = fitgauss_quant_pos_xcms,
			phenodatacolumn_quant_pos = phenodatacolumn_quant_pos,
			sampleclass_quant_pos_xcms = sampleclass_quant_pos_xcms,
			profStep_align_N1_pos_xcms = profStep_align_N1_pos_xcms,
			center_align_N1_pos_xcms = center_align_N1_pos_xcms,
			response_align_N1_pos_xcms = response_align_N1_pos_xcms,
			distFunc_align_N1_pos_xcms = distFunc_align_N1_pos_xcms,
			gapInit_align_N1_pos_xcms = gapInit_align_N1_pos_xcms,
			gapExtend_align_N1_pos_xcms = gapExtend_align_N1_pos_xcms,
			factorDiag_align_N1_pos_xcms = factorDiag_align_N1_pos_xcms,
			factorGap_align_N1_pos_xcms = factorGap_align_N1_pos_xcms,
			localAlignment_align_N1_pos_xcms = localAlignment_align_N1_pos_xcms,
			bandwidth_group_N1_pos_xcms = bandwidth_group_N1_pos_xcms,
			mzwid_group_N1_pos_xcms = mzwid_group_N1_pos_xcms,
			minfrac_group_N1_pos_xcms = minfrac_group_N1_pos_xcms,
			minsamp_group_N1_pos_xcms = minsamp_group_N1_pos_xcms,
			max_group_N1_pos_xcms = max_group_N1_pos_xcms,
			library_charactrized_neg = library_charactrized_neg,
			library_charactrization_file_neg = library_charactrization_file_neg,
			quant_library_mzml_files_neg = quant_library_mzml_files_neg,
			id_library_mzml_files_neg = id_library_mzml_files_neg,
			library_description_neg = library_description_neg,
			library_charactrized_pos = library_charactrized_pos,
			library_charactrization_file_pos = library_charactrization_file_pos,
			quant_library_mzml_files_pos = quant_library_mzml_files_pos,
			id_library_mzml_files_pos = id_library_mzml_files_pos,
			library_description_pos = library_description_pos,
			id_mzml_files_pos = id_mzml_files_pos,
			id_mzml_files_neg = id_mzml_files_neg,
			publishDir_intermediate = publishDir_intermediate,
			perform_identification = perform_identification,
			perform_identification_metfrag = perform_identification_metfrag,
			perform_identification_csifingerid = perform_identification_csifingerid,
			perform_identification_cfmid = perform_identification_cfmid,
			perform_identification_internal_library = perform_identification_internal_library,
			type_of_ionization = type_of_ionization,
			need_centroiding = need_centroiding,
			peakpicker_ini_file_pos_openms = peakpicker_ini_file_pos_openms,
			peakpicker_ini_file_neg_openms = peakpicker_ini_file_neg_openms,
			featurefinder_ini_pos_openms = featurefinder_ini_pos_openms,
			featurefinder_ini_neg_openms = featurefinder_ini_neg_openms,
			peakpicker_ini_file_library_pos_openms = peakpicker_ini_file_library_pos_openms,
			peakpicker_ini_file_library_neg_openms = peakpicker_ini_file_library_neg_openms,
			featurefinder_ini_library_pos_openms = featurefinder_ini_library_pos_openms,
			featurefinder_ini_library_neg_openms = featurefinder_ini_library_neg_openms,
			samplesheet = samplesheet,
			quant_mzml_files_neg = quant_mzml_files_neg,
			phenotype_design_pos = phenotype_design_pos,
			phenotype_design_neg = phenotype_design_neg,
			help = help,
			publish_dir_mode = publish_dir_mode,
			validate_params = validate_params,
			email_on_fail = email_on_fail,
			plaintext_email = plaintext_email,
			monochrome_logs = monochrome_logs,
			tracedir = tracedir,
			show_hidden_params = show_hidden_params,
			max_cpus = max_cpus,
			max_memory = max_memory,
			max_time = max_time,
			custom_config_version = custom_config_version,
			custom_config_base = custom_config_base,
			hostnames = hostnames,
			config_profile_name = config_profile_name,
			config_profile_description = config_profile_description,
			config_profile_contact = config_profile_contact,
			config_profile_url = config_profile_url,
			outputbucket = thuuid.touchedbucket
            }
		output {
			Array[File] results = nfcoretask.results
		}
	}
task make_uuid {
	meta {
		volatile: true
}

command <<<
        python <<CODE
        import uuid
        print("gs://truwl-internal-inputs/nf-metaboigniter/{}".format(str(uuid.uuid4())))
        CODE
>>>

  output {
    String uuid = read_string(stdout())
  }
  
  runtime {
    docker: "python:3.8.12-buster"
  }
}

task touch_uuid {
    input {
        String outputbucket
    }

    command <<<
        echo "sentinel" > sentinelfile
        gsutil cp sentinelfile ~{outputbucket}/sentinelfile
    >>>

    output {
        String touchedbucket = outputbucket
    }

    runtime {
        docker: "google/cloud-sdk:latest"
    }
}

task fetch_results {
    input {
        String outputbucket
        File execution_trace
    }
    command <<<
        cat ~{execution_trace}
        echo ~{outputbucket}
        mkdir -p ./resultsdir
        gsutil cp -R ~{outputbucket} ./resultsdir
    >>>
    output {
        Array[File] results = glob("resultsdir/*")
    }
    runtime {
        docker: "google/cloud-sdk:latest"
    }
}

task run_nfcoretask {
    input {
        String outputbucket
		String outdir = "./results"
		String? email
		String quantification_openms_xcms_library_neg = "xcms"
		String performIPO_library_neg = "none"
		String ipo_methodXset_library_neg = "centWave"
		Float ipo_noise_l_library_neg = 1000
		Float? ipo_noise_h_library_neg
		Float ipo_snthresh_l_library_neg = 10
		Float ipo_snthresh_h_library_neg = 10
		String ipo_mzCenterFun_library_neg = "wMean"
		Float ipo_integrate_library_neg = 1
		Boolean? ipo_fitgauss_library_neg
		Float ipo_min_peakwidth_l_library_neg = 12
		Float ipo_min_peakwidth_h_library_neg = 28
		Float ipo_max_peakwidth_l_library_neg = 35
		Float ipo_max_peakwidth_h_library_neg = 65
		Float ipo_ppm_l_library_neg = 17
		Float ipo_ppm_h_library_neg = 32
		Float ipo_mzdiff_l_library_neg = -0.001
		Float ipo_mzdiff_h_library_neg = 0.01
		Float ipo_charge_camera_library_neg = 1
		Float ipo_max_ppm_camera_library_neg = 10
		Float ipo_prefilter_l_l_library_neg = 3
		Float ipo_prefilter_l_h_library_neg = 3
		Float ipo_prefilter_h_l_library_neg = 100
		Float ipo_prefilter_h_h_library_neg = 100
		Float ipo_ncores_library_neg = 5
		Float? ipo_gapInit_l_library_neg
		Float ipo_gapInit_h_library_neg = 0.4
		Float ipo_gapExtend_l_library_neg = 2.1
		Float ipo_gapExtend_h_library_neg = 2.7
		Float ipo_profStep_l_library_neg = 0.7
		Float ipo_profStep_h_library_neg = 1
		Float ipo_response_l_library_neg = 1
		Float ipo_response_h_library_neg = 1
		Float ipo_factorDiag_l_library_neg = 2
		Float ipo_factorDiag_h_library_neg = 2
		Float ipo_factorGap_l_library_neg = 1
		Float ipo_factorGap_h_library_neg = 1
		Float? ipo_localAlignment_library_neg
		Float ipo_bw_l_library_neg = 22
		Float ipo_bw_h_library_neg = 38
		Float ipo_minfrac_l_library_neg = 0.3
		Float ipo_minfrac_h_library_neg = 0.7
		Float ipo_mzwid_l_library_neg = 0.015
		Float ipo_mzwid_h_library_neg = 0.035
		Float ipo_minsamp_l_library_neg = 1
		Float ipo_minsamp_h_library_neg = 1
		Float ipo_max_l_library_neg = 50
		Float ipo_max_h_library_neg = 50
		String ipo_distFunc_library_neg = "cor_opt"
		String ipo_methodRT_library_neg = "obiwarp"
		Float masstrace_ppm_library_neg_xcms = 10
		Float peakwidthlow_quant_library_neg_xcms = 5
		Float peakwidthhigh_quant_library_neg_xcms = 30
		Float noise_quant_library_neg_xcms = 1000
		Float mzdiff_quant_library_neg_xcms = -0.001
		Float snthresh_quant_library_neg_xcms = 10
		Float prefilter_quant_library_neg_xcms = 3
		Float value_of_prefilter_quant_library_neg_xcms = 100
		String mzCenterFun_quant_library_neg_xcms = "wMean"
		Float integrate_quant_library_neg_xcms = 1
		Boolean? fitgauss_quant_library_neg_xcms
		String sampleclass_quant_library_neg_xcms = "Sample"
		Float sigma_group_library_neg_camera = 8
		Float perfwhm_group_library_neg_camera = 0.6
		String intval_group_library_neg_camera = "maxo"
		Float ppm_findaddcuts_library_neg_camera = 10
		String polarity_findaddcuts_library_neg_camera = "negative"
		Float maxcharge_findisotopes_library_neg_camera = 1
		Float ppm_mapmsmstocamera_library_neg_msnbase = 10
		Float rt_mapmsmstocamera_library_neg_msnbase = 5
		String raw_file_name_preparelibrary_neg_msnbase = "rawFile"
		String compund_id_preparelibrary_neg_msnbase = "HMDB.YMDB.ID"
		String compound_name_preparelibrary_neg_msnbase = "PRIMARY_NAME"
		String mz_col_preparelibrary_neg_msnbase = "mz"
		String which_mz_preparelibrary_neg_msnbase = "f"
		Float ncore_searchengine_library_neg_msnbase = 1
		Float ppm_create_library_neg_msnbase = 10
		Float ppm_output_neg_camera = 10
		Float rt_output_neg_camera = 5
		Boolean impute_output_neg_camera = true
		String type_column_output_neg_camera = "Class"
		String selected_type_output_neg_camera = "Sample"
		Boolean rename_output_neg_camera = true
		String rename_col_output_neg_camera = "rename"
		Boolean? only_report_with_id_output_neg_camera
		Boolean? combine_replicate_output_neg_camera
		String combine_replicate_column_output_neg_camera = "rep"
		Boolean log_output_neg_camera = true
		Float sample_coverage_output_neg_camera = 50
		String normalize_output_neg_camera = "1"
		String? database_csv_files_neg_cfmid
		Float ncore_neg_cfmid = 2
		String candidate_id_identification_neg_cfmid = "Identifier"
		String candidate_inchi_smiles_identification_neg_cfmid = "SMILES"
		String candidate_mass_identification_neg_cfmid = "MonoisotopicMass"
		String database_name_column_identification_neg_cfmid = "Name"
		String database_inchI_column_identification_neg_cfmid = "InChI"
		String? database_csv_files_neg_metfrag
		Float ncore_neg_metfrag = 2
		String database_csifingerid_neg_csifingerid = "hmdb"
		Float ncore_csifingerid_neg_csifingerid = 2
		Float timeout_csifingerid_neg_csifingerid = 600
		Float ppm_mapmsmstocamera_neg_msnbase = 10
		Float rt_mapmsmstocamera_neg_msnbase = 5
		Float precursorppm_msmstoparam_neg_msnbase = 10
		Float fragmentppm_msmstoparam_neg_msnbase = 20
		Float fragmentabs_msmstoparam_neg_msnbase = 0.05
		String database_msmstoparam_neg_msnbase = "LocalCSV"
		String mode_msmstoparam_neg_msnbase = "neg"
		String adductRules_msmstoparam_neg_msnbase = "primary"
		Float minPeaks_msmstoparam_neg_msnbase = 2
		Float sigma_group_neg_camera = 8
		Float perfwhm_group_neg_camera = 0.6
		String intval_group_neg_camera = "maxo"
		Float ppm_findaddcuts_neg_camera = 10
		String polarity_findaddcuts_neg_camera = "negative"
		Float maxcharge_findisotopes_neg_camera = 1
		Boolean? blank_filter_neg
		String method_blankfilter_neg_xcms = "max"
		String blank_blankfilter_neg_xcms = "Blank"
		String sample_blankfilter_neg_xcms = "Sample"
		String rest_blankfilter_neg_xcms = "T"
		Boolean? dilution_filter_neg
		String corto_dilutionfilter_neg_xcms = "0.5,1,2,4"
		String dilution_dilutionfilter_neg_xcms = "D1,D2,D3,D4"
		Float pvalue_dilutionfilter_neg_xcms = 0.05
		Float corcut_dilutionfilter_neg_xcms = -1
		String abs_dilutionfilter_neg_xcms = "F"
		Boolean? cv_filter_neg
		String qc_cvfilter_neg_xcms = "QC"
		Float cvcut_cvfilter_neg_xcms = 0.3
		String quantification_openms_xcms_neg = "xcms"
		String performIPO_neg = "none"
		Boolean? ipo_allSamples_neg
		String ipo_columnToSelect_neg = "Class"
		String ipo_valueToSelect_neg = "QC"
		String ipo_methodXset_neg = "centWave"
		Float? ipo_noise_l_neg
		Float? ipo_noise_h_neg
		Float ipo_snthresh_l_neg = 10
		Float ipo_snthresh_h_neg = 10
		String ipo_mzCenterFun_neg = "wMean"
		Float ipo_integrate_neg = 1
		Boolean? ipo_fitgauss_neg
		Float ipo_min_peakwidth_l_neg = 12
		Float ipo_min_peakwidth_h_neg = 28
		Float ipo_max_peakwidth_l_neg = 35
		Float ipo_max_peakwidth_h_neg = 65
		Float ipo_ppm_l_neg = 17
		Float ipo_ppm_h_neg = 32
		Float ipo_mzdiff_l_neg = -0.001
		Float ipo_mzdiff_h_neg = 0.01
		Float ipo_charge_camera_neg = 1
		Float ipo_max_ppm_camera_neg = 10
		Float ipo_prefilter_l_l_neg = 3
		Float ipo_prefilter_l_h_neg = 3
		Float ipo_prefilter_h_l_neg = 100
		Float ipo_prefilter_h_h_neg = 100
		Float ipo_ncores_neg = 5
		Float? ipo_gapInit_l_neg
		Float ipo_gapInit_h_neg = 0.4
		Float ipo_gapExtend_l_neg = 2.1
		Float ipo_gapExtend_h_neg = 2.7
		Float ipo_profStep_l_neg = 0.7
		Float ipo_profStep_h_neg = 1
		Float ipo_response_l_neg = 1
		Float ipo_response_h_neg = 1
		Float ipo_factorDiag_l_neg = 2
		Float ipo_factorDiag_h_neg = 2
		Float ipo_factorGap_l_neg = 1
		Float ipo_factorGap_h_neg = 1
		Float? ipo_localAlignment_neg
		Float ipo_bw_l_neg = 22
		Float ipo_bw_h_neg = 38
		Float ipo_minfrac_l_neg = 0.3
		Float ipo_minfrac_h_neg = 0.7
		Float ipo_mzwid_l_neg = 0.015
		Float ipo_mzwid_h_neg = 0.035
		Float ipo_minsamp_l_neg = 1
		Float ipo_minsamp_h_neg = 1
		Float ipo_max_l_neg = 50
		Float ipo_max_h_neg = 50
		String ipo_distFunc_neg = "cor_opt"
		String ipo_methodRT_neg = "obiwarp"
		Float masstrace_ppm_neg_xcms = 10
		Float peakwidthlow_quant_neg_xcms = 5
		Float peakwidthhigh_quant_neg_xcms = 30
		Float noise_quant_neg_xcms = 1000
		Float mzdiff_quant_neg_xcms = -0.001
		Float snthresh_quant_neg_xcms = 10
		Float prefilter_quant_neg_xcms = 3
		Float value_of_prefilter_quant_neg_xcms = 100
		String mzCenterFun_quant_neg_xcms = "wMean"
		Float integrate_quant_neg_xcms = 1
		Boolean? fitgauss_quant_neg_xcms
		String phenodatacolumn_quant_neg = "Class"
		String sampleclass_quant_neg_xcms = "Sample"
		Float profStep_align_N1_neg_xcms = 1
		String center_align_N1_neg_xcms = "NULL"
		Float response_align_N1_neg_xcms = 1
		String distFunc_align_N1_neg_xcms = "cor_opt"
		String gapInit_align_N1_neg_xcms = "NULL"
		String gapExtend_align_N1_neg_xcms = "NULL"
		Float factorDiag_align_N1_neg_xcms = 2
		Float factorGap_align_N1_neg_xcms = 1
		Float? localAlignment_align_N1_neg_xcms
		Float bandwidth_group_N1_neg_xcms = 15
		Float mzwid_group_N1_neg_xcms = 0.005
		Float minfrac_group_N1_neg_xcms = 0.5
		Float minsamp_group_N1_neg_xcms = 1
		Float max_group_N1_neg_xcms = 50
		String quantification_openms_xcms_library_pos = "xcms"
		String performIPO_library_pos = "none"
		String ipo_methodXset_library_pos = "centWave"
		Float? ipo_noise_l_library_pos
		Float? ipo_noise_h_library_pos
		Float ipo_snthresh_l_library_pos = 10
		Float ipo_snthresh_h_library_pos = 10
		String ipo_mzCenterFun_library_pos = "wMean"
		Float ipo_integrate_library_pos = 1
		Boolean? ipo_fitgauss_library_pos
		Float ipo_min_peakwidth_l_library_pos = 12
		Float ipo_min_peakwidth_h_library_pos = 28
		Float ipo_max_peakwidth_l_library_pos = 35
		Float ipo_max_peakwidth_h_library_pos = 65
		Float ipo_ppm_l_library_pos = 17
		Float ipo_ppm_h_library_pos = 32
		Float ipo_mzdiff_l_library_pos = -0.001
		Float ipo_mzdiff_h_library_pos = 0.01
		Float ipo_charge_camera_library_pos = 1
		Float ipo_max_ppm_camera_library_pos = 10
		Float ipo_prefilter_l_l_library_pos = 3
		Float ipo_prefilter_l_h_library_pos = 3
		Float ipo_prefilter_h_l_library_pos = 100
		Float ipo_prefilter_h_h_library_pos = 100
		Float ipo_ncores_library_pos = 5
		Float? ipo_gapInit_l_library_pos
		Float ipo_gapInit_h_library_pos = 0.4
		Float ipo_gapExtend_l_library_pos = 2.1
		Float ipo_gapExtend_h_library_pos = 2.7
		Float ipo_profStep_l_library_pos = 0.7
		Float ipo_profStep_h_library_pos = 1
		Float ipo_response_l_library_pos = 1
		Float ipo_response_h_library_pos = 1
		Float ipo_factorDiag_l_library_pos = 2
		Float ipo_factorDiag_h_library_pos = 2
		Float ipo_factorGap_l_library_pos = 1
		Float ipo_factorGap_h_library_pos = 1
		Float? ipo_localAlignment_library_pos
		Float ipo_bw_l_library_pos = 22
		Float ipo_bw_h_library_pos = 38
		Float ipo_minfrac_l_library_pos = 0.3
		Float ipo_minfrac_h_library_pos = 0.7
		Float ipo_mzwid_l_library_pos = 0.015
		Float ipo_mzwid_h_library_pos = 0.035
		Float ipo_minsamp_l_library_pos = 1
		Float ipo_minsamp_h_library_pos = 1
		Float ipo_max_l_library_pos = 50
		Float ipo_max_h_library_pos = 50
		String ipo_distFunc_library_pos = "cor_opt"
		String ipo_methodRT_library_pos = "obiwarp"
		Float masstrace_ppm_library_pos_xcms = 10
		Float peakwidthlow_quant_library_pos_xcms = 5
		Float peakwidthhigh_quant_library_pos_xcms = 30
		Float noise_quant_library_pos_xcms = 1000
		Float mzdiff_quant_library_pos_xcms = -0.001
		Float snthresh_quant_library_pos_xcms = 10
		Float prefilter_quant_library_pos_xcms = 3
		Float value_of_prefilter_quant_library_pos_xcms = 100
		String mzCenterFun_quant_library_pos_xcms = "wMean"
		Float integrate_quant_library_pos_xcms = 1
		Boolean? fitgauss_quant_library_pos_xcms
		String sampleclass_quant_library_pos_xcms = "Sample"
		Float sigma_group_library_pos_camera = 8
		Float perfwhm_group_library_pos_camera = 0.6
		String intval_group_library_pos_camera = "maxo"
		Float ppm_findaddcuts_library_pos_camera = 10
		String polarity_findaddcuts_library_pos_camera = "positive"
		Float maxcharge_findisotopes_library_pos_camera = 1
		Float ppm_mapmsmstocamera_library_pos_msnbase = 10
		Float rt_mapmsmstocamera_library_pos_msnbase = 5
		String raw_file_name_preparelibrary_pos_msnbase = "rawFile"
		String compund_id_preparelibrary_pos_msnbase = "HMDB.YMDB.ID"
		String compound_name_preparelibrary_pos_msnbase = "PRIMARY_NAME"
		String mz_col_preparelibrary_pos_msnbase = "mz"
		String which_mz_preparelibrary_pos_msnbase = "f"
		Float ncore_searchengine_library_pos_msnbase = 1
		Float ppm_create_library_pos_msnbase = 10
		Float ppm_output_pos_camera = 10
		Float rt_output_pos_camera = 5
		Boolean impute_output_pos_camera = true
		String type_column_output_pos_camera = "Class"
		String selected_type_output_pos_camera = "Sample"
		Boolean rename_output_pos_camera = true
		String rename_col_output_pos_camera = "rename"
		Boolean? only_report_with_id_output_pos_camera
		Boolean? combine_replicate_output_pos_camera
		String combine_replicate_column_output_pos_camera = "rep"
		Boolean log_output_pos_camera = true
		Float sample_coverage_output_pos_camera = 50
		String normalize_output_pos_camera = "1"
		String? database_csv_files_pos_cfmid
		Float ncore_pos_cfmid = 2
		String candidate_id_identification_pos_cfmid = "Identifier"
		String candidate_inchi_smiles_identification_pos_cfmid = "SMILES"
		String candidate_mass_identification_pos_cfmid = "MonoisotopicMass"
		String database_name_column_identification_pos_cfmid = "Name"
		String database_inchI_column_identification_pos_cfmid = "InChI"
		String? database_csv_files_pos_metfrag
		Float ncore_pos_metfrag = 2
		String database_csifingerid_pos_csifingerid = "hmdb"
		Float ncore_csifingerid_pos_csifingerid = 2
		Float timeout_csifingerid_pos_csifingerid = 600
		Float ppm_mapmsmstocamera_pos_msnbase = 10
		Float rt_mapmsmstocamera_pos_msnbase = 5
		Float precursorppm_msmstoparam_pos_msnbase = 10
		Float fragmentppm_msmstoparam_pos_msnbase = 20
		Float fragmentabs_msmstoparam_pos_msnbase = 0.05
		String database_msmstoparam_pos_msnbase = "LocalCSV"
		String mode_msmstoparam_pos_msnbase = "pos"
		String adductRules_msmstoparam_pos_msnbase = "primary"
		Float minPeaks_msmstoparam_pos_msnbase = 2
		Float sigma_group_pos_camera = 8
		Float perfwhm_group_pos_camera = 0.6
		String intval_group_pos_camera = "maxo"
		Float ppm_findaddcuts_pos_camera = 10
		String polarity_findaddcuts_pos_camera = "positive"
		Float maxcharge_findisotopes_pos_camera = 1
		Boolean? blank_filter_pos
		String method_blankfilter_pos_xcms = "max"
		String blank_blankfilter_pos_xcms = "Blank"
		String sample_blankfilter_pos_xcms = "Sample"
		String rest_blankfilter_pos_xcms = "T"
		Boolean? dilution_filter_pos
		String corto_dilutionfilter_pos_xcms = "0.5,1,2,4"
		String dilution_dilutionfilter_pos_xcms = "D1,D2,D3,D4"
		Float pvalue_dilutionfilter_pos_xcms = 0.05
		Float corcut_dilutionfilter_pos_xcms = -1
		String abs_dilutionfilter_pos_xcms = "F"
		Boolean? cv_filter_pos
		String qc_cvfilter_pos_xcms = "QC"
		Float cvcut_cvfilter_pos_xcms = 0.3
		String quantification_openms_xcms_pos = "xcms"
		String performIPO_pos = "none"
		Boolean? ipo_allSamples_pos
		String ipo_columnToSelect_pos = "Class"
		String ipo_valueToSelect_pos = "QC"
		String ipo_methodXset_pos = "centWave"
		Float? ipo_noise_l_pos
		Float? ipo_noise_h_pos
		Float ipo_snthresh_l_pos = 10
		Float ipo_snthresh_h_pos = 10
		String ipo_mzCenterFun_pos = "wMean"
		Float ipo_integrate_pos = 1
		Boolean? ipo_fitgauss_pos
		Float ipo_min_peakwidth_l_pos = 12
		Float ipo_min_peakwidth_h_pos = 28
		Float ipo_max_peakwidth_l_pos = 35
		Float ipo_max_peakwidth_h_pos = 65
		Float ipo_ppm_l_pos = 17
		Float ipo_ppm_h_pos = 32
		Float ipo_mzdiff_l_pos = -0.001
		Float ipo_mzdiff_h_pos = 0.01
		Float ipo_charge_camera_pos = 1
		Float ipo_max_ppm_camera_pos = 10
		Float ipo_prefilter_l_l_pos = 3
		Float ipo_prefilter_l_h_pos = 3
		Float ipo_prefilter_h_l_pos = 100
		Float ipo_prefilter_h_h_pos = 100
		Float ipo_ncores_pos = 5
		Float? ipo_gapInit_l_pos
		Float ipo_gapInit_h_pos = 0.4
		Float ipo_gapExtend_l_pos = 2.1
		Float ipo_gapExtend_h_pos = 2.7
		Float ipo_profStep_l_pos = 0.7
		Float ipo_profStep_h_pos = 1
		Float ipo_response_l_pos = 1
		Float ipo_response_h_pos = 1
		Float ipo_factorDiag_l_pos = 2
		Float ipo_factorDiag_h_pos = 2
		Float ipo_factorGap_l_pos = 1
		Float ipo_factorGap_h_pos = 1
		Float? ipo_localAlignment_pos
		Float ipo_bw_l_pos = 22
		Float ipo_bw_h_pos = 38
		Float ipo_minfrac_l_pos = 0.3
		Float ipo_minfrac_h_pos = 0.7
		Float ipo_mzwid_l_pos = 0.015
		Float ipo_mzwid_h_pos = 0.035
		Float ipo_minsamp_l_pos = 1
		Float ipo_minsamp_h_pos = 1
		Float ipo_max_l_pos = 50
		Float ipo_max_h_pos = 50
		String ipo_distFunc_pos = "cor_opt"
		String ipo_methodRT_pos = "obiwarp"
		Float masstrace_ppm_pos_xcms = 10
		Float peakwidthlow_quant_pos_xcms = 5
		Float peakwidthhigh_quant_pos_xcms = 30
		Float noise_quant_pos_xcms = 1000
		Float mzdiff_quant_pos_xcms = -0.001
		Float snthresh_quant_pos_xcms = 10
		Float prefilter_quant_pos_xcms = 3
		Float value_of_prefilter_quant_pos_xcms = 100
		String mzCenterFun_quant_pos_xcms = "wMean"
		Float integrate_quant_pos_xcms = 1
		Boolean? fitgauss_quant_pos_xcms
		String phenodatacolumn_quant_pos = "Class"
		String sampleclass_quant_pos_xcms = "Sample"
		Float profStep_align_N1_pos_xcms = 1
		String center_align_N1_pos_xcms = "NULL"
		Float response_align_N1_pos_xcms = 1
		String distFunc_align_N1_pos_xcms = "cor_opt"
		String gapInit_align_N1_pos_xcms = "NULL"
		String gapExtend_align_N1_pos_xcms = "NULL"
		Float factorDiag_align_N1_pos_xcms = 2
		Float factorGap_align_N1_pos_xcms = 1
		Float? localAlignment_align_N1_pos_xcms
		Float bandwidth_group_N1_pos_xcms = 15
		Float mzwid_group_N1_pos_xcms = 0.005
		Float minfrac_group_N1_pos_xcms = 0.5
		Float minsamp_group_N1_pos_xcms = 1
		Float max_group_N1_pos_xcms = 50
		Boolean? library_charactrized_neg
		String? library_charactrization_file_neg
		String? quant_library_mzml_files_neg
		String? id_library_mzml_files_neg
		String? library_description_neg
		Boolean? library_charactrized_pos
		String? library_charactrization_file_pos
		String? quant_library_mzml_files_pos
		String? id_library_mzml_files_pos
		String? library_description_pos
		String? id_mzml_files_pos
		String? id_mzml_files_neg
		Boolean? publishDir_intermediate
		Boolean? perform_identification
		Boolean? perform_identification_metfrag
		Boolean? perform_identification_csifingerid
		Boolean? perform_identification_cfmid
		Boolean? perform_identification_internal_library
		String type_of_ionization = "pos"
		Boolean? need_centroiding
		String peakpicker_ini_file_pos_openms = "$baseDir/assets/openms/openms_peak_picker_ini_pos.ini"
		String peakpicker_ini_file_neg_openms = "$baseDir/assets/openms/openms_peak_picker_ini_neg.ini"
		String featurefinder_ini_pos_openms = "$baseDir/assets/openms/openms_feature_finder_metabo_ini_pos.ini"
		String featurefinder_ini_neg_openms = "$baseDir/assets/openms/openms_feature_finder_metabo_ini_neg.ini"
		String peakpicker_ini_file_library_pos_openms = "$baseDir/assets/openms/openms_peak_picker_lib_ini_pos.ini"
		String peakpicker_ini_file_library_neg_openms = "$baseDir/assets/openms/openms_peak_picker_lib_ini_neg.ini"
		String featurefinder_ini_library_pos_openms = "$baseDir/assets/openms/openms_feature_finder_metabo_lib_ini_pos.ini"
		String featurefinder_ini_library_neg_openms = "$baseDir/assets/openms/openms_feature_finder_metabo_lib_ini_neg.ini"
		File samplesheet
		String? quant_mzml_files_neg
		String? phenotype_design_pos
		String? phenotype_design_neg
		Boolean? help
		String publish_dir_mode = "copy"
		Boolean validate_params = true
		String? email_on_fail
		Boolean? plaintext_email
		Boolean? monochrome_logs
		String tracedir = "./results/pipeline_info"
		Boolean? show_hidden_params
		Float max_cpus = 16
		String max_memory = "128.GB"
		String max_time = "240.h"
		String custom_config_version = "master"
		String custom_config_base = "https://raw.githubusercontent.com/nf-core/configs/master"
		String? hostnames
		String? config_profile_name
		String? config_profile_description
		String? config_profile_contact
		String? config_profile_url

	}
	command <<<
		export NXF_VER=21.10.5
		export NXF_MODE=google
		echo ~{outputbucket}
		/nextflow -c /truwl.nf.config run /metaboigniter-1.0.1  -profile truwl  --input ~{samplesheet} 	~{"--outdir " + outdir}	~{"--email " + email}	~{"--quantification_openms_xcms_library_neg " + quantification_openms_xcms_library_neg}	~{"--performIPO_library_neg " + performIPO_library_neg}	~{"--ipo_methodXset_library_neg " + ipo_methodXset_library_neg}	~{"--ipo_noise_l_library_neg " + ipo_noise_l_library_neg}	~{"--ipo_noise_h_library_neg " + ipo_noise_h_library_neg}	~{"--ipo_snthresh_l_library_neg " + ipo_snthresh_l_library_neg}	~{"--ipo_snthresh_h_library_neg " + ipo_snthresh_h_library_neg}	~{"--ipo_mzCenterFun_library_neg " + ipo_mzCenterFun_library_neg}	~{"--ipo_integrate_library_neg " + ipo_integrate_library_neg}	~{true="--ipo_fitgauss_library_neg  " false="" ipo_fitgauss_library_neg}	~{"--ipo_min_peakwidth_l_library_neg " + ipo_min_peakwidth_l_library_neg}	~{"--ipo_min_peakwidth_h_library_neg " + ipo_min_peakwidth_h_library_neg}	~{"--ipo_max_peakwidth_l_library_neg " + ipo_max_peakwidth_l_library_neg}	~{"--ipo_max_peakwidth_h_library_neg " + ipo_max_peakwidth_h_library_neg}	~{"--ipo_ppm_l_library_neg " + ipo_ppm_l_library_neg}	~{"--ipo_ppm_h_library_neg " + ipo_ppm_h_library_neg}	~{"--ipo_mzdiff_l_library_neg " + ipo_mzdiff_l_library_neg}	~{"--ipo_mzdiff_h_library_neg " + ipo_mzdiff_h_library_neg}	~{"--ipo_charge_camera_library_neg " + ipo_charge_camera_library_neg}	~{"--ipo_max_ppm_camera_library_neg " + ipo_max_ppm_camera_library_neg}	~{"--ipo_prefilter_l_l_library_neg " + ipo_prefilter_l_l_library_neg}	~{"--ipo_prefilter_l_h_library_neg " + ipo_prefilter_l_h_library_neg}	~{"--ipo_prefilter_h_l_library_neg " + ipo_prefilter_h_l_library_neg}	~{"--ipo_prefilter_h_h_library_neg " + ipo_prefilter_h_h_library_neg}	~{"--ipo_ncores_library_neg " + ipo_ncores_library_neg}	~{"--ipo_gapInit_l_library_neg " + ipo_gapInit_l_library_neg}	~{"--ipo_gapInit_h_library_neg " + ipo_gapInit_h_library_neg}	~{"--ipo_gapExtend_l_library_neg " + ipo_gapExtend_l_library_neg}	~{"--ipo_gapExtend_h_library_neg " + ipo_gapExtend_h_library_neg}	~{"--ipo_profStep_l_library_neg " + ipo_profStep_l_library_neg}	~{"--ipo_profStep_h_library_neg " + ipo_profStep_h_library_neg}	~{"--ipo_response_l_library_neg " + ipo_response_l_library_neg}	~{"--ipo_response_h_library_neg " + ipo_response_h_library_neg}	~{"--ipo_factorDiag_l_library_neg " + ipo_factorDiag_l_library_neg}	~{"--ipo_factorDiag_h_library_neg " + ipo_factorDiag_h_library_neg}	~{"--ipo_factorGap_l_library_neg " + ipo_factorGap_l_library_neg}	~{"--ipo_factorGap_h_library_neg " + ipo_factorGap_h_library_neg}	~{"--ipo_localAlignment_library_neg " + ipo_localAlignment_library_neg}	~{"--ipo_bw_l_library_neg " + ipo_bw_l_library_neg}	~{"--ipo_bw_h_library_neg " + ipo_bw_h_library_neg}	~{"--ipo_minfrac_l_library_neg " + ipo_minfrac_l_library_neg}	~{"--ipo_minfrac_h_library_neg " + ipo_minfrac_h_library_neg}	~{"--ipo_mzwid_l_library_neg " + ipo_mzwid_l_library_neg}	~{"--ipo_mzwid_h_library_neg " + ipo_mzwid_h_library_neg}	~{"--ipo_minsamp_l_library_neg " + ipo_minsamp_l_library_neg}	~{"--ipo_minsamp_h_library_neg " + ipo_minsamp_h_library_neg}	~{"--ipo_max_l_library_neg " + ipo_max_l_library_neg}	~{"--ipo_max_h_library_neg " + ipo_max_h_library_neg}	~{"--ipo_distFunc_library_neg " + ipo_distFunc_library_neg}	~{"--ipo_methodRT_library_neg " + ipo_methodRT_library_neg}	~{"--masstrace_ppm_library_neg_xcms " + masstrace_ppm_library_neg_xcms}	~{"--peakwidthlow_quant_library_neg_xcms " + peakwidthlow_quant_library_neg_xcms}	~{"--peakwidthhigh_quant_library_neg_xcms " + peakwidthhigh_quant_library_neg_xcms}	~{"--noise_quant_library_neg_xcms " + noise_quant_library_neg_xcms}	~{"--mzdiff_quant_library_neg_xcms " + mzdiff_quant_library_neg_xcms}	~{"--snthresh_quant_library_neg_xcms " + snthresh_quant_library_neg_xcms}	~{"--prefilter_quant_library_neg_xcms " + prefilter_quant_library_neg_xcms}	~{"--value_of_prefilter_quant_library_neg_xcms " + value_of_prefilter_quant_library_neg_xcms}	~{"--mzCenterFun_quant_library_neg_xcms " + mzCenterFun_quant_library_neg_xcms}	~{"--integrate_quant_library_neg_xcms " + integrate_quant_library_neg_xcms}	~{true="--fitgauss_quant_library_neg_xcms  " false="" fitgauss_quant_library_neg_xcms}	~{"--sampleclass_quant_library_neg_xcms " + sampleclass_quant_library_neg_xcms}	~{"--sigma_group_library_neg_camera " + sigma_group_library_neg_camera}	~{"--perfwhm_group_library_neg_camera " + perfwhm_group_library_neg_camera}	~{"--intval_group_library_neg_camera " + intval_group_library_neg_camera}	~{"--ppm_findaddcuts_library_neg_camera " + ppm_findaddcuts_library_neg_camera}	~{"--polarity_findaddcuts_library_neg_camera " + polarity_findaddcuts_library_neg_camera}	~{"--maxcharge_findisotopes_library_neg_camera " + maxcharge_findisotopes_library_neg_camera}	~{"--ppm_mapmsmstocamera_library_neg_msnbase " + ppm_mapmsmstocamera_library_neg_msnbase}	~{"--rt_mapmsmstocamera_library_neg_msnbase " + rt_mapmsmstocamera_library_neg_msnbase}	~{"--raw_file_name_preparelibrary_neg_msnbase " + raw_file_name_preparelibrary_neg_msnbase}	~{"--compund_id_preparelibrary_neg_msnbase " + compund_id_preparelibrary_neg_msnbase}	~{"--compound_name_preparelibrary_neg_msnbase " + compound_name_preparelibrary_neg_msnbase}	~{"--mz_col_preparelibrary_neg_msnbase " + mz_col_preparelibrary_neg_msnbase}	~{"--which_mz_preparelibrary_neg_msnbase " + which_mz_preparelibrary_neg_msnbase}	~{"--ncore_searchengine_library_neg_msnbase " + ncore_searchengine_library_neg_msnbase}	~{"--ppm_create_library_neg_msnbase " + ppm_create_library_neg_msnbase}	~{"--ppm_output_neg_camera " + ppm_output_neg_camera}	~{"--rt_output_neg_camera " + rt_output_neg_camera}	~{true="--impute_output_neg_camera  " false="" impute_output_neg_camera}	~{"--type_column_output_neg_camera " + type_column_output_neg_camera}	~{"--selected_type_output_neg_camera " + selected_type_output_neg_camera}	~{true="--rename_output_neg_camera  " false="" rename_output_neg_camera}	~{"--rename_col_output_neg_camera " + rename_col_output_neg_camera}	~{true="--only_report_with_id_output_neg_camera  " false="" only_report_with_id_output_neg_camera}	~{true="--combine_replicate_output_neg_camera  " false="" combine_replicate_output_neg_camera}	~{"--combine_replicate_column_output_neg_camera " + combine_replicate_column_output_neg_camera}	~{true="--log_output_neg_camera  " false="" log_output_neg_camera}	~{"--sample_coverage_output_neg_camera " + sample_coverage_output_neg_camera}	~{"--normalize_output_neg_camera " + normalize_output_neg_camera}	~{"--database_csv_files_neg_cfmid " + database_csv_files_neg_cfmid}	~{"--ncore_neg_cfmid " + ncore_neg_cfmid}	~{"--candidate_id_identification_neg_cfmid " + candidate_id_identification_neg_cfmid}	~{"--candidate_inchi_smiles_identification_neg_cfmid " + candidate_inchi_smiles_identification_neg_cfmid}	~{"--candidate_mass_identification_neg_cfmid " + candidate_mass_identification_neg_cfmid}	~{"--database_name_column_identification_neg_cfmid " + database_name_column_identification_neg_cfmid}	~{"--database_inchI_column_identification_neg_cfmid " + database_inchI_column_identification_neg_cfmid}	~{"--database_csv_files_neg_metfrag " + database_csv_files_neg_metfrag}	~{"--ncore_neg_metfrag " + ncore_neg_metfrag}	~{"--database_csifingerid_neg_csifingerid " + database_csifingerid_neg_csifingerid}	~{"--ncore_csifingerid_neg_csifingerid " + ncore_csifingerid_neg_csifingerid}	~{"--timeout_csifingerid_neg_csifingerid " + timeout_csifingerid_neg_csifingerid}	~{"--ppm_mapmsmstocamera_neg_msnbase " + ppm_mapmsmstocamera_neg_msnbase}	~{"--rt_mapmsmstocamera_neg_msnbase " + rt_mapmsmstocamera_neg_msnbase}	~{"--precursorppm_msmstoparam_neg_msnbase " + precursorppm_msmstoparam_neg_msnbase}	~{"--fragmentppm_msmstoparam_neg_msnbase " + fragmentppm_msmstoparam_neg_msnbase}	~{"--fragmentabs_msmstoparam_neg_msnbase " + fragmentabs_msmstoparam_neg_msnbase}	~{"--database_msmstoparam_neg_msnbase " + database_msmstoparam_neg_msnbase}	~{"--mode_msmstoparam_neg_msnbase " + mode_msmstoparam_neg_msnbase}	~{"--adductRules_msmstoparam_neg_msnbase " + adductRules_msmstoparam_neg_msnbase}	~{"--minPeaks_msmstoparam_neg_msnbase " + minPeaks_msmstoparam_neg_msnbase}	~{"--sigma_group_neg_camera " + sigma_group_neg_camera}	~{"--perfwhm_group_neg_camera " + perfwhm_group_neg_camera}	~{"--intval_group_neg_camera " + intval_group_neg_camera}	~{"--ppm_findaddcuts_neg_camera " + ppm_findaddcuts_neg_camera}	~{"--polarity_findaddcuts_neg_camera " + polarity_findaddcuts_neg_camera}	~{"--maxcharge_findisotopes_neg_camera " + maxcharge_findisotopes_neg_camera}	~{true="--blank_filter_neg  " false="" blank_filter_neg}	~{"--method_blankfilter_neg_xcms " + method_blankfilter_neg_xcms}	~{"--blank_blankfilter_neg_xcms " + blank_blankfilter_neg_xcms}	~{"--sample_blankfilter_neg_xcms " + sample_blankfilter_neg_xcms}	~{"--rest_blankfilter_neg_xcms " + rest_blankfilter_neg_xcms}	~{true="--dilution_filter_neg  " false="" dilution_filter_neg}	~{"--corto_dilutionfilter_neg_xcms " + corto_dilutionfilter_neg_xcms}	~{"--dilution_dilutionfilter_neg_xcms " + dilution_dilutionfilter_neg_xcms}	~{"--pvalue_dilutionfilter_neg_xcms " + pvalue_dilutionfilter_neg_xcms}	~{"--corcut_dilutionfilter_neg_xcms " + corcut_dilutionfilter_neg_xcms}	~{"--abs_dilutionfilter_neg_xcms " + abs_dilutionfilter_neg_xcms}	~{true="--cv_filter_neg  " false="" cv_filter_neg}	~{"--qc_cvfilter_neg_xcms " + qc_cvfilter_neg_xcms}	~{"--cvcut_cvfilter_neg_xcms " + cvcut_cvfilter_neg_xcms}	~{"--quantification_openms_xcms_neg " + quantification_openms_xcms_neg}	~{"--performIPO_neg " + performIPO_neg}	~{true="--ipo_allSamples_neg  " false="" ipo_allSamples_neg}	~{"--ipo_columnToSelect_neg " + ipo_columnToSelect_neg}	~{"--ipo_valueToSelect_neg " + ipo_valueToSelect_neg}	~{"--ipo_methodXset_neg " + ipo_methodXset_neg}	~{"--ipo_noise_l_neg " + ipo_noise_l_neg}	~{"--ipo_noise_h_neg " + ipo_noise_h_neg}	~{"--ipo_snthresh_l_neg " + ipo_snthresh_l_neg}	~{"--ipo_snthresh_h_neg " + ipo_snthresh_h_neg}	~{"--ipo_mzCenterFun_neg " + ipo_mzCenterFun_neg}	~{"--ipo_integrate_neg " + ipo_integrate_neg}	~{true="--ipo_fitgauss_neg  " false="" ipo_fitgauss_neg}	~{"--ipo_min_peakwidth_l_neg " + ipo_min_peakwidth_l_neg}	~{"--ipo_min_peakwidth_h_neg " + ipo_min_peakwidth_h_neg}	~{"--ipo_max_peakwidth_l_neg " + ipo_max_peakwidth_l_neg}	~{"--ipo_max_peakwidth_h_neg " + ipo_max_peakwidth_h_neg}	~{"--ipo_ppm_l_neg " + ipo_ppm_l_neg}	~{"--ipo_ppm_h_neg " + ipo_ppm_h_neg}	~{"--ipo_mzdiff_l_neg " + ipo_mzdiff_l_neg}	~{"--ipo_mzdiff_h_neg " + ipo_mzdiff_h_neg}	~{"--ipo_charge_camera_neg " + ipo_charge_camera_neg}	~{"--ipo_max_ppm_camera_neg " + ipo_max_ppm_camera_neg}	~{"--ipo_prefilter_l_l_neg " + ipo_prefilter_l_l_neg}	~{"--ipo_prefilter_l_h_neg " + ipo_prefilter_l_h_neg}	~{"--ipo_prefilter_h_l_neg " + ipo_prefilter_h_l_neg}	~{"--ipo_prefilter_h_h_neg " + ipo_prefilter_h_h_neg}	~{"--ipo_ncores_neg " + ipo_ncores_neg}	~{"--ipo_gapInit_l_neg " + ipo_gapInit_l_neg}	~{"--ipo_gapInit_h_neg " + ipo_gapInit_h_neg}	~{"--ipo_gapExtend_l_neg " + ipo_gapExtend_l_neg}	~{"--ipo_gapExtend_h_neg " + ipo_gapExtend_h_neg}	~{"--ipo_profStep_l_neg " + ipo_profStep_l_neg}	~{"--ipo_profStep_h_neg " + ipo_profStep_h_neg}	~{"--ipo_response_l_neg " + ipo_response_l_neg}	~{"--ipo_response_h_neg " + ipo_response_h_neg}	~{"--ipo_factorDiag_l_neg " + ipo_factorDiag_l_neg}	~{"--ipo_factorDiag_h_neg " + ipo_factorDiag_h_neg}	~{"--ipo_factorGap_l_neg " + ipo_factorGap_l_neg}	~{"--ipo_factorGap_h_neg " + ipo_factorGap_h_neg}	~{"--ipo_localAlignment_neg " + ipo_localAlignment_neg}	~{"--ipo_bw_l_neg " + ipo_bw_l_neg}	~{"--ipo_bw_h_neg " + ipo_bw_h_neg}	~{"--ipo_minfrac_l_neg " + ipo_minfrac_l_neg}	~{"--ipo_minfrac_h_neg " + ipo_minfrac_h_neg}	~{"--ipo_mzwid_l_neg " + ipo_mzwid_l_neg}	~{"--ipo_mzwid_h_neg " + ipo_mzwid_h_neg}	~{"--ipo_minsamp_l_neg " + ipo_minsamp_l_neg}	~{"--ipo_minsamp_h_neg " + ipo_minsamp_h_neg}	~{"--ipo_max_l_neg " + ipo_max_l_neg}	~{"--ipo_max_h_neg " + ipo_max_h_neg}	~{"--ipo_distFunc_neg " + ipo_distFunc_neg}	~{"--ipo_methodRT_neg " + ipo_methodRT_neg}	~{"--masstrace_ppm_neg_xcms " + masstrace_ppm_neg_xcms}	~{"--peakwidthlow_quant_neg_xcms " + peakwidthlow_quant_neg_xcms}	~{"--peakwidthhigh_quant_neg_xcms " + peakwidthhigh_quant_neg_xcms}	~{"--noise_quant_neg_xcms " + noise_quant_neg_xcms}	~{"--mzdiff_quant_neg_xcms " + mzdiff_quant_neg_xcms}	~{"--snthresh_quant_neg_xcms " + snthresh_quant_neg_xcms}	~{"--prefilter_quant_neg_xcms " + prefilter_quant_neg_xcms}	~{"--value_of_prefilter_quant_neg_xcms " + value_of_prefilter_quant_neg_xcms}	~{"--mzCenterFun_quant_neg_xcms " + mzCenterFun_quant_neg_xcms}	~{"--integrate_quant_neg_xcms " + integrate_quant_neg_xcms}	~{true="--fitgauss_quant_neg_xcms  " false="" fitgauss_quant_neg_xcms}	~{"--phenodatacolumn_quant_neg " + phenodatacolumn_quant_neg}	~{"--sampleclass_quant_neg_xcms " + sampleclass_quant_neg_xcms}	~{"--profStep_align_N1_neg_xcms " + profStep_align_N1_neg_xcms}	~{"--center_align_N1_neg_xcms " + center_align_N1_neg_xcms}	~{"--response_align_N1_neg_xcms " + response_align_N1_neg_xcms}	~{"--distFunc_align_N1_neg_xcms " + distFunc_align_N1_neg_xcms}	~{"--gapInit_align_N1_neg_xcms " + gapInit_align_N1_neg_xcms}	~{"--gapExtend_align_N1_neg_xcms " + gapExtend_align_N1_neg_xcms}	~{"--factorDiag_align_N1_neg_xcms " + factorDiag_align_N1_neg_xcms}	~{"--factorGap_align_N1_neg_xcms " + factorGap_align_N1_neg_xcms}	~{"--localAlignment_align_N1_neg_xcms " + localAlignment_align_N1_neg_xcms}	~{"--bandwidth_group_N1_neg_xcms " + bandwidth_group_N1_neg_xcms}	~{"--mzwid_group_N1_neg_xcms " + mzwid_group_N1_neg_xcms}	~{"--minfrac_group_N1_neg_xcms " + minfrac_group_N1_neg_xcms}	~{"--minsamp_group_N1_neg_xcms " + minsamp_group_N1_neg_xcms}	~{"--max_group_N1_neg_xcms " + max_group_N1_neg_xcms}	~{"--quantification_openms_xcms_library_pos " + quantification_openms_xcms_library_pos}	~{"--performIPO_library_pos " + performIPO_library_pos}	~{"--ipo_methodXset_library_pos " + ipo_methodXset_library_pos}	~{"--ipo_noise_l_library_pos " + ipo_noise_l_library_pos}	~{"--ipo_noise_h_library_pos " + ipo_noise_h_library_pos}	~{"--ipo_snthresh_l_library_pos " + ipo_snthresh_l_library_pos}	~{"--ipo_snthresh_h_library_pos " + ipo_snthresh_h_library_pos}	~{"--ipo_mzCenterFun_library_pos " + ipo_mzCenterFun_library_pos}	~{"--ipo_integrate_library_pos " + ipo_integrate_library_pos}	~{true="--ipo_fitgauss_library_pos  " false="" ipo_fitgauss_library_pos}	~{"--ipo_min_peakwidth_l_library_pos " + ipo_min_peakwidth_l_library_pos}	~{"--ipo_min_peakwidth_h_library_pos " + ipo_min_peakwidth_h_library_pos}	~{"--ipo_max_peakwidth_l_library_pos " + ipo_max_peakwidth_l_library_pos}	~{"--ipo_max_peakwidth_h_library_pos " + ipo_max_peakwidth_h_library_pos}	~{"--ipo_ppm_l_library_pos " + ipo_ppm_l_library_pos}	~{"--ipo_ppm_h_library_pos " + ipo_ppm_h_library_pos}	~{"--ipo_mzdiff_l_library_pos " + ipo_mzdiff_l_library_pos}	~{"--ipo_mzdiff_h_library_pos " + ipo_mzdiff_h_library_pos}	~{"--ipo_charge_camera_library_pos " + ipo_charge_camera_library_pos}	~{"--ipo_max_ppm_camera_library_pos " + ipo_max_ppm_camera_library_pos}	~{"--ipo_prefilter_l_l_library_pos " + ipo_prefilter_l_l_library_pos}	~{"--ipo_prefilter_l_h_library_pos " + ipo_prefilter_l_h_library_pos}	~{"--ipo_prefilter_h_l_library_pos " + ipo_prefilter_h_l_library_pos}	~{"--ipo_prefilter_h_h_library_pos " + ipo_prefilter_h_h_library_pos}	~{"--ipo_ncores_library_pos " + ipo_ncores_library_pos}	~{"--ipo_gapInit_l_library_pos " + ipo_gapInit_l_library_pos}	~{"--ipo_gapInit_h_library_pos " + ipo_gapInit_h_library_pos}	~{"--ipo_gapExtend_l_library_pos " + ipo_gapExtend_l_library_pos}	~{"--ipo_gapExtend_h_library_pos " + ipo_gapExtend_h_library_pos}	~{"--ipo_profStep_l_library_pos " + ipo_profStep_l_library_pos}	~{"--ipo_profStep_h_library_pos " + ipo_profStep_h_library_pos}	~{"--ipo_response_l_library_pos " + ipo_response_l_library_pos}	~{"--ipo_response_h_library_pos " + ipo_response_h_library_pos}	~{"--ipo_factorDiag_l_library_pos " + ipo_factorDiag_l_library_pos}	~{"--ipo_factorDiag_h_library_pos " + ipo_factorDiag_h_library_pos}	~{"--ipo_factorGap_l_library_pos " + ipo_factorGap_l_library_pos}	~{"--ipo_factorGap_h_library_pos " + ipo_factorGap_h_library_pos}	~{"--ipo_localAlignment_library_pos " + ipo_localAlignment_library_pos}	~{"--ipo_bw_l_library_pos " + ipo_bw_l_library_pos}	~{"--ipo_bw_h_library_pos " + ipo_bw_h_library_pos}	~{"--ipo_minfrac_l_library_pos " + ipo_minfrac_l_library_pos}	~{"--ipo_minfrac_h_library_pos " + ipo_minfrac_h_library_pos}	~{"--ipo_mzwid_l_library_pos " + ipo_mzwid_l_library_pos}	~{"--ipo_mzwid_h_library_pos " + ipo_mzwid_h_library_pos}	~{"--ipo_minsamp_l_library_pos " + ipo_minsamp_l_library_pos}	~{"--ipo_minsamp_h_library_pos " + ipo_minsamp_h_library_pos}	~{"--ipo_max_l_library_pos " + ipo_max_l_library_pos}	~{"--ipo_max_h_library_pos " + ipo_max_h_library_pos}	~{"--ipo_distFunc_library_pos " + ipo_distFunc_library_pos}	~{"--ipo_methodRT_library_pos " + ipo_methodRT_library_pos}	~{"--masstrace_ppm_library_pos_xcms " + masstrace_ppm_library_pos_xcms}	~{"--peakwidthlow_quant_library_pos_xcms " + peakwidthlow_quant_library_pos_xcms}	~{"--peakwidthhigh_quant_library_pos_xcms " + peakwidthhigh_quant_library_pos_xcms}	~{"--noise_quant_library_pos_xcms " + noise_quant_library_pos_xcms}	~{"--mzdiff_quant_library_pos_xcms " + mzdiff_quant_library_pos_xcms}	~{"--snthresh_quant_library_pos_xcms " + snthresh_quant_library_pos_xcms}	~{"--prefilter_quant_library_pos_xcms " + prefilter_quant_library_pos_xcms}	~{"--value_of_prefilter_quant_library_pos_xcms " + value_of_prefilter_quant_library_pos_xcms}	~{"--mzCenterFun_quant_library_pos_xcms " + mzCenterFun_quant_library_pos_xcms}	~{"--integrate_quant_library_pos_xcms " + integrate_quant_library_pos_xcms}	~{true="--fitgauss_quant_library_pos_xcms  " false="" fitgauss_quant_library_pos_xcms}	~{"--sampleclass_quant_library_pos_xcms " + sampleclass_quant_library_pos_xcms}	~{"--sigma_group_library_pos_camera " + sigma_group_library_pos_camera}	~{"--perfwhm_group_library_pos_camera " + perfwhm_group_library_pos_camera}	~{"--intval_group_library_pos_camera " + intval_group_library_pos_camera}	~{"--ppm_findaddcuts_library_pos_camera " + ppm_findaddcuts_library_pos_camera}	~{"--polarity_findaddcuts_library_pos_camera " + polarity_findaddcuts_library_pos_camera}	~{"--maxcharge_findisotopes_library_pos_camera " + maxcharge_findisotopes_library_pos_camera}	~{"--ppm_mapmsmstocamera_library_pos_msnbase " + ppm_mapmsmstocamera_library_pos_msnbase}	~{"--rt_mapmsmstocamera_library_pos_msnbase " + rt_mapmsmstocamera_library_pos_msnbase}	~{"--raw_file_name_preparelibrary_pos_msnbase " + raw_file_name_preparelibrary_pos_msnbase}	~{"--compund_id_preparelibrary_pos_msnbase " + compund_id_preparelibrary_pos_msnbase}	~{"--compound_name_preparelibrary_pos_msnbase " + compound_name_preparelibrary_pos_msnbase}	~{"--mz_col_preparelibrary_pos_msnbase " + mz_col_preparelibrary_pos_msnbase}	~{"--which_mz_preparelibrary_pos_msnbase " + which_mz_preparelibrary_pos_msnbase}	~{"--ncore_searchengine_library_pos_msnbase " + ncore_searchengine_library_pos_msnbase}	~{"--ppm_create_library_pos_msnbase " + ppm_create_library_pos_msnbase}	~{"--ppm_output_pos_camera " + ppm_output_pos_camera}	~{"--rt_output_pos_camera " + rt_output_pos_camera}	~{true="--impute_output_pos_camera  " false="" impute_output_pos_camera}	~{"--type_column_output_pos_camera " + type_column_output_pos_camera}	~{"--selected_type_output_pos_camera " + selected_type_output_pos_camera}	~{true="--rename_output_pos_camera  " false="" rename_output_pos_camera}	~{"--rename_col_output_pos_camera " + rename_col_output_pos_camera}	~{true="--only_report_with_id_output_pos_camera  " false="" only_report_with_id_output_pos_camera}	~{true="--combine_replicate_output_pos_camera  " false="" combine_replicate_output_pos_camera}	~{"--combine_replicate_column_output_pos_camera " + combine_replicate_column_output_pos_camera}	~{true="--log_output_pos_camera  " false="" log_output_pos_camera}	~{"--sample_coverage_output_pos_camera " + sample_coverage_output_pos_camera}	~{"--normalize_output_pos_camera " + normalize_output_pos_camera}	~{"--database_csv_files_pos_cfmid " + database_csv_files_pos_cfmid}	~{"--ncore_pos_cfmid " + ncore_pos_cfmid}	~{"--candidate_id_identification_pos_cfmid " + candidate_id_identification_pos_cfmid}	~{"--candidate_inchi_smiles_identification_pos_cfmid " + candidate_inchi_smiles_identification_pos_cfmid}	~{"--candidate_mass_identification_pos_cfmid " + candidate_mass_identification_pos_cfmid}	~{"--database_name_column_identification_pos_cfmid " + database_name_column_identification_pos_cfmid}	~{"--database_inchI_column_identification_pos_cfmid " + database_inchI_column_identification_pos_cfmid}	~{"--database_csv_files_pos_metfrag " + database_csv_files_pos_metfrag}	~{"--ncore_pos_metfrag " + ncore_pos_metfrag}	~{"--database_csifingerid_pos_csifingerid " + database_csifingerid_pos_csifingerid}	~{"--ncore_csifingerid_pos_csifingerid " + ncore_csifingerid_pos_csifingerid}	~{"--timeout_csifingerid_pos_csifingerid " + timeout_csifingerid_pos_csifingerid}	~{"--ppm_mapmsmstocamera_pos_msnbase " + ppm_mapmsmstocamera_pos_msnbase}	~{"--rt_mapmsmstocamera_pos_msnbase " + rt_mapmsmstocamera_pos_msnbase}	~{"--precursorppm_msmstoparam_pos_msnbase " + precursorppm_msmstoparam_pos_msnbase}	~{"--fragmentppm_msmstoparam_pos_msnbase " + fragmentppm_msmstoparam_pos_msnbase}	~{"--fragmentabs_msmstoparam_pos_msnbase " + fragmentabs_msmstoparam_pos_msnbase}	~{"--database_msmstoparam_pos_msnbase " + database_msmstoparam_pos_msnbase}	~{"--mode_msmstoparam_pos_msnbase " + mode_msmstoparam_pos_msnbase}	~{"--adductRules_msmstoparam_pos_msnbase " + adductRules_msmstoparam_pos_msnbase}	~{"--minPeaks_msmstoparam_pos_msnbase " + minPeaks_msmstoparam_pos_msnbase}	~{"--sigma_group_pos_camera " + sigma_group_pos_camera}	~{"--perfwhm_group_pos_camera " + perfwhm_group_pos_camera}	~{"--intval_group_pos_camera " + intval_group_pos_camera}	~{"--ppm_findaddcuts_pos_camera " + ppm_findaddcuts_pos_camera}	~{"--polarity_findaddcuts_pos_camera " + polarity_findaddcuts_pos_camera}	~{"--maxcharge_findisotopes_pos_camera " + maxcharge_findisotopes_pos_camera}	~{true="--blank_filter_pos  " false="" blank_filter_pos}	~{"--method_blankfilter_pos_xcms " + method_blankfilter_pos_xcms}	~{"--blank_blankfilter_pos_xcms " + blank_blankfilter_pos_xcms}	~{"--sample_blankfilter_pos_xcms " + sample_blankfilter_pos_xcms}	~{"--rest_blankfilter_pos_xcms " + rest_blankfilter_pos_xcms}	~{true="--dilution_filter_pos  " false="" dilution_filter_pos}	~{"--corto_dilutionfilter_pos_xcms " + corto_dilutionfilter_pos_xcms}	~{"--dilution_dilutionfilter_pos_xcms " + dilution_dilutionfilter_pos_xcms}	~{"--pvalue_dilutionfilter_pos_xcms " + pvalue_dilutionfilter_pos_xcms}	~{"--corcut_dilutionfilter_pos_xcms " + corcut_dilutionfilter_pos_xcms}	~{"--abs_dilutionfilter_pos_xcms " + abs_dilutionfilter_pos_xcms}	~{true="--cv_filter_pos  " false="" cv_filter_pos}	~{"--qc_cvfilter_pos_xcms " + qc_cvfilter_pos_xcms}	~{"--cvcut_cvfilter_pos_xcms " + cvcut_cvfilter_pos_xcms}	~{"--quantification_openms_xcms_pos " + quantification_openms_xcms_pos}	~{"--performIPO_pos " + performIPO_pos}	~{true="--ipo_allSamples_pos  " false="" ipo_allSamples_pos}	~{"--ipo_columnToSelect_pos " + ipo_columnToSelect_pos}	~{"--ipo_valueToSelect_pos " + ipo_valueToSelect_pos}	~{"--ipo_methodXset_pos " + ipo_methodXset_pos}	~{"--ipo_noise_l_pos " + ipo_noise_l_pos}	~{"--ipo_noise_h_pos " + ipo_noise_h_pos}	~{"--ipo_snthresh_l_pos " + ipo_snthresh_l_pos}	~{"--ipo_snthresh_h_pos " + ipo_snthresh_h_pos}	~{"--ipo_mzCenterFun_pos " + ipo_mzCenterFun_pos}	~{"--ipo_integrate_pos " + ipo_integrate_pos}	~{true="--ipo_fitgauss_pos  " false="" ipo_fitgauss_pos}	~{"--ipo_min_peakwidth_l_pos " + ipo_min_peakwidth_l_pos}	~{"--ipo_min_peakwidth_h_pos " + ipo_min_peakwidth_h_pos}	~{"--ipo_max_peakwidth_l_pos " + ipo_max_peakwidth_l_pos}	~{"--ipo_max_peakwidth_h_pos " + ipo_max_peakwidth_h_pos}	~{"--ipo_ppm_l_pos " + ipo_ppm_l_pos}	~{"--ipo_ppm_h_pos " + ipo_ppm_h_pos}	~{"--ipo_mzdiff_l_pos " + ipo_mzdiff_l_pos}	~{"--ipo_mzdiff_h_pos " + ipo_mzdiff_h_pos}	~{"--ipo_charge_camera_pos " + ipo_charge_camera_pos}	~{"--ipo_max_ppm_camera_pos " + ipo_max_ppm_camera_pos}	~{"--ipo_prefilter_l_l_pos " + ipo_prefilter_l_l_pos}	~{"--ipo_prefilter_l_h_pos " + ipo_prefilter_l_h_pos}	~{"--ipo_prefilter_h_l_pos " + ipo_prefilter_h_l_pos}	~{"--ipo_prefilter_h_h_pos " + ipo_prefilter_h_h_pos}	~{"--ipo_ncores_pos " + ipo_ncores_pos}	~{"--ipo_gapInit_l_pos " + ipo_gapInit_l_pos}	~{"--ipo_gapInit_h_pos " + ipo_gapInit_h_pos}	~{"--ipo_gapExtend_l_pos " + ipo_gapExtend_l_pos}	~{"--ipo_gapExtend_h_pos " + ipo_gapExtend_h_pos}	~{"--ipo_profStep_l_pos " + ipo_profStep_l_pos}	~{"--ipo_profStep_h_pos " + ipo_profStep_h_pos}	~{"--ipo_response_l_pos " + ipo_response_l_pos}	~{"--ipo_response_h_pos " + ipo_response_h_pos}	~{"--ipo_factorDiag_l_pos " + ipo_factorDiag_l_pos}	~{"--ipo_factorDiag_h_pos " + ipo_factorDiag_h_pos}	~{"--ipo_factorGap_l_pos " + ipo_factorGap_l_pos}	~{"--ipo_factorGap_h_pos " + ipo_factorGap_h_pos}	~{"--ipo_localAlignment_pos " + ipo_localAlignment_pos}	~{"--ipo_bw_l_pos " + ipo_bw_l_pos}	~{"--ipo_bw_h_pos " + ipo_bw_h_pos}	~{"--ipo_minfrac_l_pos " + ipo_minfrac_l_pos}	~{"--ipo_minfrac_h_pos " + ipo_minfrac_h_pos}	~{"--ipo_mzwid_l_pos " + ipo_mzwid_l_pos}	~{"--ipo_mzwid_h_pos " + ipo_mzwid_h_pos}	~{"--ipo_minsamp_l_pos " + ipo_minsamp_l_pos}	~{"--ipo_minsamp_h_pos " + ipo_minsamp_h_pos}	~{"--ipo_max_l_pos " + ipo_max_l_pos}	~{"--ipo_max_h_pos " + ipo_max_h_pos}	~{"--ipo_distFunc_pos " + ipo_distFunc_pos}	~{"--ipo_methodRT_pos " + ipo_methodRT_pos}	~{"--masstrace_ppm_pos_xcms " + masstrace_ppm_pos_xcms}	~{"--peakwidthlow_quant_pos_xcms " + peakwidthlow_quant_pos_xcms}	~{"--peakwidthhigh_quant_pos_xcms " + peakwidthhigh_quant_pos_xcms}	~{"--noise_quant_pos_xcms " + noise_quant_pos_xcms}	~{"--mzdiff_quant_pos_xcms " + mzdiff_quant_pos_xcms}	~{"--snthresh_quant_pos_xcms " + snthresh_quant_pos_xcms}	~{"--prefilter_quant_pos_xcms " + prefilter_quant_pos_xcms}	~{"--value_of_prefilter_quant_pos_xcms " + value_of_prefilter_quant_pos_xcms}	~{"--mzCenterFun_quant_pos_xcms " + mzCenterFun_quant_pos_xcms}	~{"--integrate_quant_pos_xcms " + integrate_quant_pos_xcms}	~{true="--fitgauss_quant_pos_xcms  " false="" fitgauss_quant_pos_xcms}	~{"--phenodatacolumn_quant_pos " + phenodatacolumn_quant_pos}	~{"--sampleclass_quant_pos_xcms " + sampleclass_quant_pos_xcms}	~{"--profStep_align_N1_pos_xcms " + profStep_align_N1_pos_xcms}	~{"--center_align_N1_pos_xcms " + center_align_N1_pos_xcms}	~{"--response_align_N1_pos_xcms " + response_align_N1_pos_xcms}	~{"--distFunc_align_N1_pos_xcms " + distFunc_align_N1_pos_xcms}	~{"--gapInit_align_N1_pos_xcms " + gapInit_align_N1_pos_xcms}	~{"--gapExtend_align_N1_pos_xcms " + gapExtend_align_N1_pos_xcms}	~{"--factorDiag_align_N1_pos_xcms " + factorDiag_align_N1_pos_xcms}	~{"--factorGap_align_N1_pos_xcms " + factorGap_align_N1_pos_xcms}	~{"--localAlignment_align_N1_pos_xcms " + localAlignment_align_N1_pos_xcms}	~{"--bandwidth_group_N1_pos_xcms " + bandwidth_group_N1_pos_xcms}	~{"--mzwid_group_N1_pos_xcms " + mzwid_group_N1_pos_xcms}	~{"--minfrac_group_N1_pos_xcms " + minfrac_group_N1_pos_xcms}	~{"--minsamp_group_N1_pos_xcms " + minsamp_group_N1_pos_xcms}	~{"--max_group_N1_pos_xcms " + max_group_N1_pos_xcms}	~{true="--library_charactrized_neg  " false="" library_charactrized_neg}	~{"--library_charactrization_file_neg " + library_charactrization_file_neg}	~{"--quant_library_mzml_files_neg " + quant_library_mzml_files_neg}	~{"--id_library_mzml_files_neg " + id_library_mzml_files_neg}	~{"--library_description_neg " + library_description_neg}	~{true="--library_charactrized_pos  " false="" library_charactrized_pos}	~{"--library_charactrization_file_pos " + library_charactrization_file_pos}	~{"--quant_library_mzml_files_pos " + quant_library_mzml_files_pos}	~{"--id_library_mzml_files_pos " + id_library_mzml_files_pos}	~{"--library_description_pos " + library_description_pos}	~{"--id_mzml_files_pos " + id_mzml_files_pos}	~{"--id_mzml_files_neg " + id_mzml_files_neg}	~{true="--publishDir_intermediate  " false="" publishDir_intermediate}	~{true="--perform_identification  " false="" perform_identification}	~{true="--perform_identification_metfrag  " false="" perform_identification_metfrag}	~{true="--perform_identification_csifingerid  " false="" perform_identification_csifingerid}	~{true="--perform_identification_cfmid  " false="" perform_identification_cfmid}	~{true="--perform_identification_internal_library  " false="" perform_identification_internal_library}	~{"--type_of_ionization " + type_of_ionization}	~{true="--need_centroiding  " false="" need_centroiding}	~{"--peakpicker_ini_file_pos_openms " + peakpicker_ini_file_pos_openms}	~{"--peakpicker_ini_file_neg_openms " + peakpicker_ini_file_neg_openms}	~{"--featurefinder_ini_pos_openms " + featurefinder_ini_pos_openms}	~{"--featurefinder_ini_neg_openms " + featurefinder_ini_neg_openms}	~{"--peakpicker_ini_file_library_pos_openms " + peakpicker_ini_file_library_pos_openms}	~{"--peakpicker_ini_file_library_neg_openms " + peakpicker_ini_file_library_neg_openms}	~{"--featurefinder_ini_library_pos_openms " + featurefinder_ini_library_pos_openms}	~{"--featurefinder_ini_library_neg_openms " + featurefinder_ini_library_neg_openms}	~{"--samplesheet " + samplesheet}	~{"--quant_mzml_files_neg " + quant_mzml_files_neg}	~{"--phenotype_design_pos " + phenotype_design_pos}	~{"--phenotype_design_neg " + phenotype_design_neg}	~{true="--help  " false="" help}	~{"--publish_dir_mode " + publish_dir_mode}	~{true="--validate_params  " false="" validate_params}	~{"--email_on_fail " + email_on_fail}	~{true="--plaintext_email  " false="" plaintext_email}	~{true="--monochrome_logs  " false="" monochrome_logs}	~{"--tracedir " + tracedir}	~{true="--show_hidden_params  " false="" show_hidden_params}	~{"--max_cpus " + max_cpus}	~{"--max_memory " + max_memory}	~{"--max_time " + max_time}	~{"--custom_config_version " + custom_config_version}	~{"--custom_config_base " + custom_config_base}	~{"--hostnames " + hostnames}	~{"--config_profile_name " + config_profile_name}	~{"--config_profile_description " + config_profile_description}	~{"--config_profile_contact " + config_profile_contact}	~{"--config_profile_url " + config_profile_url}	-w ~{outputbucket}
	>>>
        
    output {
        File execution_trace = "pipeline_execution_trace.txt"
        Array[File] results = glob("results/*/*html")
    }
    runtime {
        docker: "truwl/nfcore-metaboigniter:1.0.1_0.1.0"
        memory: "2 GB"
        cpu: 1
    }
}
    