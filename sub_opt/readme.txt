######################################################################################
This test checks running with suboptimal solutions.
It is based on a real example (heavily chopped) in which max-exon-sets=1 
has a result which max-exon-sets=2 does not have. 
Yes it is possible! See explanation at the bottom of this file.
######################################################################################


################################# run 1 ##############################################
metaeuk easy-predict contigs.fna .proteins.faa res1 tmpDir1
cat res1.fas
>XP_004338648.1|part_NW_004457554.1|-|174|1.734e-49|4|3972|6419|6419[6419]:6279[6279]:141[141]|6243[6243]:6064[6064]:180[180]|5460[5460]:5317[5317]:144[144]|5213[5210]:3972[3972]:1242[1239]
ILNNVSGSVRSGELIAIMGPTGSGKTTLLNVLARRIKLNVTGDILVNMAYVLQDDIFFPNLTVRDTISYTAYLKLPKSLswkekrekvdEILTELGIQRCSNtivggGLDSSTSLGLIVSMKNLAKSGHTVVSTIhqpsssmfLMFDhvlllaeGFVVYSGTASGVLSYFAKLGLHAPPHYNPADFMCTqsththhrtrthaltLSRLGAivevvtaNETVKDGKSVKQMLIDTYAENQKTIEGKRPPItigdeersAVhdikkgPKYNTSFHAQMLVMAMRAFKQRRGDILNWMQtftivaiaiLSGLLWFQMDMKGNHPCLHPPLVLLVFSfvsfrfvcfvfcgGLTPISPVRRKRPGRQDRFLVLHDHVLDHAALVQRPLLLYAPLqcprrplTALCRShslfsfhlSFSLARAVPPERAVLTKERAGGNYRLSAYFLGKTVAEtplelvlPFISSVISYWMVGLSDYFPnfifyvVLVWLFTLMGGSIGLFISATVLdvkkaltltvivvlGsvllggffisaENLPVWIAWARWISFMKYAYEAVLINEFDLSQGQTFTPSNP
>XP_004342144.1|part_NW_004457554.1|-|1435|0|3|10|2349|2349[2349]:1600[1600]:750[750]|1507[1507]:752[752]:756[756]|627[627]:10[10]:618[618]
msssssssdGESVELQDWAGQRKIRDVEAGLADGGDdasggklPHQHGLVVGGDEEnglgvvsKYAKVNQPCPFSVHPPKSRYNLEWRNINYKVVIPLPPSNLFvklllklPIPNTIANYfktkkevpILNNVSGRVAagqvvaimGPTGSGKTTLLNVLARRIKLNVTGDILVNGEPVQGRQLKRRMAYVLQDDIFFPNLTVRDTISYTAYLKLPKSLswkekrervEDIITEMGIQRCSNtivgggwvRGVSGGERKRTNIANELVNNPslvfldepTSGLDAATSLGLIVTLKNLAKSGHTVvttihqpsssmfMMFdnvvllaeggwVVYSGSSAGVLPYcarlglhsppryNPADFMLEVVTSTETIADGRTVRQLLIDTYAeneakrgdgdgsSKAKPVqlddeereavrdmkkgkkyPTSFFAQTWVMAVRSFKQRRHDILSWMHLIQIALIAllggllWFqmdkkesAIGDRtgflffstmfWIMHTwflslfaPPERAVLTKERATGTYRLSAYFLGKTLAEtpleliLPILFSCISYWMVGLSDYAgnffffvliMclfvlmGNSiglfigatVPdvkkaltmsvivvlgsvllggfFIARENLPVWIAWARWISFMKYAYELVLINEFALSHDQTFTPAATRSAYNSVGAPITGGQVLDHYGVETNWWGDIIFVVGVILVTRLLGYlslrflNKPRM


################################# run 2 ##############################################
metaeuk easy-predict contigs.fna .proteins.faa res2 tmpDir2 --max-exon-sets 2
cat res2.fas
>XP_004342144.1|part_NW_004457554.1|-|1435|0|3|10|2349|2349[2349]:1600[1600]:750[750]|1507[1507]:752[752]:756[756]|627[627]:10[10]:618[618]
msssssssdGESVELQDWAGQRKIRDVEAGLADGGDdasggklPHQHGLVVGGDEEnglgvvsKYAKVNQPCPFSVHPPKSRYNLEWRNINYKVVIPLPPSNLFvklllklPIPNTIANYfktkkevpILNNVSGRVAagqvvaimGPTGSGKTTLLNVLARRIKLNVTGDILVNGEPVQGRQLKRRMAYVLQDDIFFPNLTVRDTISYTAYLKLPKSLswkekrervEDIITEMGIQRCSNtivgggwvRGVSGGERKRTNIANELVNNPslvfldepTSGLDAATSLGLIVTLKNLAKSGHTVvttihqpsssmfMMFdnvvllaeggwVVYSGSSAGVLPYcarlglhsppryNPADFMLEVVTSTETIADGRTVRQLLIDTYAeneakrgdgdgsSKAKPVqlddeereavrdmkkgkkyPTSFFAQTWVMAVRSFKQRRHDILSWMHLIQIALIAllggllWFqmdkkesAIGDRtgflffstmfWIMHTwflslfaPPERAVLTKERATGTYRLSAYFLGKTLAEtpleliLPILFSCISYWMVGLSDYAgnffffvliMclfvlmGNSiglfigatVPdvkkaltmsvivvlgsvllggfFIARENLPVWIAWARWISFMKYAYELVLINEFALSHDQTFTPAATRSAYNSVGAPITGGQVLDHYGVETNWWGDIIFVVGVILVTRLLGYlslrflNKPRM
>XP_004342146.1|part_NW_004457554.1|-|955|1.363e-284|3|3729|6788|6788[6788]:6258[6258]:531[531]|5708[5708]:5613[5613]:96[96]|5243[5243]:3729[3729]:1515[1515]
MssssssseEYELATYEENDKPAHKNNKQVsdddegeNEDEMGRAALYEDDQEMAIVSKYAKVNQPCPFSQHPPKHHINLEWRNINYKVVFPMPPSNLFvklllklPIPDMILNlfkkkmempILNNVSGSVRSGELIAIMGPTGSGKTTLLNVLARRIKLNVTGDILVNGEPVQGRRGVSGGERKRTNIanelvanpSLIFLDEPTSGLVFRHRVTPGGFVVYSGTASGVLSYFAKLGLHAPPHYNPADFMCTqsththhrtrthaltLSRLGAivevvtaNETVKDGKSVKQMLIDTYAENQKTIEGKRPPItigdeersAVhdikkgPKYNTSFHAQMLVMAMRAFKQRRGDILNWMQtftivaiaiLSGLLWFQMDMKGNHPCLHPPLVLLVFSfvsfrfvcfvfcgGLTPISPVRRKRPGRQDRFLVLHDHVLDHAALVQRPLLLYAPLqcprrplTALCRShslfsfhlSFSLARAVPPERAVLTKERAGGNYRLSAYFLGKTVAEtplelvlPFISSVISYWMVGLSDYFPnfifyvVLVWLFTLMGGSIGLFISATVLdvkkaltltvivvlGsvllggffisaENLPVWIAWARWISFMKYAYEAVLINEFDLSQGQTFTPSNPSAYTEITDPATQRITgtahrppptlATTLLTCHWPSSGSMILDKYDVETNIWGDIIFLVGVILVCRTLAYlslrflNKPRM


######## explanation ########
If I run with --max-exon-sets > 1, am I guaranteed to get ALL the predictions I get when running --max-exon-sets = 1?
No! You most likely see all of them but this is not guaranteed because there can be complex cases as the following.
Let's say we have only one contig C and we consider only its plus strand. Now Let's consider three targets that match this contig as follows:
match_A) T1 matches an exon set between the coordinates 1000 and 2000 with E-value 0.
match_B) T2 matches an exon set between the coordinates 1000 and 2000 with E-value 10^-300.
match_C) T2 also matches an exon set between the coordinates 3000 and 3800 with E-value 10^-200.
match_D) T3 matches an exon set between the coordinates 3100 and 3700 with E-value 10^-50.
If we run with --max-exon-sets = 1, we will get the following report:
T1|C|+|1000|2000|... and T3|C|+|3100|3700|... because T2 will be matched to C exactly once and the best match (match_B) will be clustered under match_A.
If we run with --max-exon-sets > 1, we will get the following report:
T1|C|+|1000|2000|... and T2|C|+|3000|3800|... because T2 will be matched to C more than once and the second best match (match_C) overlaps the match of T3 to the contig (match_D) and thus match_D will be excluded when preventing overlaps (the default MetaEuk setting).
