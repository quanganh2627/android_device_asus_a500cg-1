/*-------------------------------------------------------------------------
 * INTEL CONFIDENTIAL
 *
 * Copyright 2012 Intel Corporation All Rights Reserved.
 *
 * This source code and all documentation related to the source code
 * ("Material") contains trade secrets and proprietary and confidential
 * information of Intel and its suppliers and licensors. The Material is
 * deemed highly confidential, and is protected by worldwide copyright and
 * trade secret laws and treaty provisions. No part of the Material may be
 * used, copied, reproduced, modified, published, uploaded, posted,
 * transmitted, distributed, or disclosed in any way without Intel's prior
 * express written permission.
 *
 * No license under any patent, copyright, trade secret or other
 * intellectual property right is granted to or conferred upon you by
 * disclosure or delivery of the Materials, either expressly, by
 * implication, inducement, estoppel or otherwise. Any license under such
 * intellectual property rights must be express and approved by Intel in
 * writing.
 *-------------------------------------------------------------------------*/
/*
 * Author: Sun, Taiyi
 * Creation Time: 04/12/2012
 */

#ifndef PA_COMMON_H
#define PA_COMMON_H

/*
 Return code
 */
typedef enum
{
	SH_STATUS_OK = 0, SH_STATUS_FAIL = -1,
} SH_STATUS;

/*
 The sample number must be powers of 2.
 Currently it is 2^9 = 512 samples
 If SAM_POW gets changed, the sin table in myfft.c must be computed again.
 */
#ifdef INSTANT_MODE
#define SAM_RATE_DENOM 1
#define SAM_POW 7
#else
#define SAM_RATE_DENOM 2
#define SAM_POW 8
#endif

#define MAX_SAM_POW 9
#define MIN_SAM_POW 7
#define MAX_SAM_NUM (1 << MAX_SAM_POW)
#define MIN_SAM_NUM (1 << MIN_SAM_POW)
#define SAM_NUM (1 << SAM_POW)

#define PEDO_CALC_POW 6
#define PEDO_CALC_NUM (1 << PEDO_CALC_POW)


/*
 Buffer offset and length
 Don't change these macros
 */
#define BUF_INPUT_INX 0
#define BUF_INPUT_LEN (SAM_NUM + SAM_NUM + SAM_NUM)
#define BUF_WORK1_INX BUF_INPUT_LEN
#define BUF_WORK1_LEN SAM_NUM
#define BUF_WORK2_INX (BUF_INPUT_LEN + BUF_WORK1_LEN)
#define BUF_WORK2_LEN SAM_NUM
#define BUF_TOTAL_LEN (BUF_INPUT_LEN + BUF_WORK1_LEN + BUF_WORK2_LEN)

/*
 FFT bands number.
 If FFT_BANDS_NUM gets changed, array bandBounds in extendedfeatures.c
 should be changed accordingly
 */
#define FFT_BANDS_NUM 30

/*
 Features
 There are 28 FFT bands starting with FdMAGFFT
 and 28 FFT bands starting with FdVerticalFFT
 */
enum EnumFeature
{
	ARcoeffMAGFd = 0,
	KALMANCMAGFd,
	MAGstdFd,
	ARcoeffVerticalFd,
	KALMANCVerticalFd,
	VerticalstdFd,
	ARcoeffMAG,
	KALMANCMAG,
	MAGstd,
	ARcoeffVertical,
	KALMANCVertical,
	Verticalstd,
	VNumPV,
	VPVMeanAmplitude,
	VPVMeanRaiseFall,
	MNumPV,
	MPVMeanAmplitude,
	MPVMeanRaiseFall,
	FdMAGFFT,
	FdVerticalFFT = FdMAGFFT + FFT_BANDS_NUM,
	CorrMV = FdVerticalFFT + FFT_BANDS_NUM,
	MCR,
	VCR,
	NUM_FEATURES,
	ENUM_MAX = 0x7fffffff
};

/*
 In determinSedentary, if the standard diviation of one magnitude window is less than this value,
 the sedentary vode will increase one.
 */


#ifdef INSTANT_MODE
#define SED_THR 20
#define SED_WIN_THR 0
#else
#define SED_THR 16
#define SED_WIN_THR 1
#endif

/*
 Threshold of span time in wave counting
 */
#define PV_TIME_THR 20
/*
 Threshold of amplitude in wave counting
 */
#define PV_AMP_THR 100

/*
 Decimal bits of AR coefficient
 */
#define AR_COEFF_R 24
/*
 Decimal bits of AR constant
 */
#define AR_CONST_R 8
/*
 Decimal bits of standard variance
 */
#define STDV_R 0
/*
 Decimal bits of peak and valley number
 */
#define PV_NUM_R 0
/*
 Decimal bits of peak and valley average amplitude
 */
#define PV_AMP_R 8
/*
 Decimal bits of peak and valley average span time
 */
#define PV_TIME_R 8
/*
 Decimal bits of correlative coefficients
 */
#define CORR_R 16
/*
 Decimal bits of FFT bands energy
 */
#define FFT_BAND_R 0

#endif
