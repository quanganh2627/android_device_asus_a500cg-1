/*
 * Copyright 2012-2013 Intel Corporation
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#ifndef _IA_CP_H_
#define _IA_CP_H_

/** @file ia_cp.h
 * This file declares the Intel camera computational photography API.
 */

#include "ia_types.h"
#include "ia_cp_types.h"

#ifdef __cplusplus
extern "C" {
#endif

/** @brief Initialize HDR acceleration setup
 *
 * @param[in] acc_api pointer to acceleration api
 * @param[in] environment pointer to environment setup
 *
 * This function initializes the acceleration setup by using input acc_api
 * and log_env.
*/
LIBEXPORT void
ia_cp_init (const ia_acceleration * acc_api,
            const ia_env          * environment);


/** @brief Close HDR acceleration setup
 *
 * This function frees and closes all the resources allocated for HDR
 * in its initialization call.
 */
LIBEXPORT void
ia_cp_uninit (void);

/** @brief allocate and map all HDR intermediate data buffers
 *
 * @param[in] width input frame width
 * @param[in] height input frame height
 * @param[in] hdrb_data CPF binary data with tuning choices
 * @param[in] tgt target platform for HDR execution (host, ipu etc.)
 * @return error status
 *
 * This function allocates and maps all HDR intermediate buffers
 * required to do the processing. It also passes tuning choices
 * set in the CPFF for the particular platform. If hdrb_data is
 * NULL, default choices are used.
 */
LIBEXPORT ia_err
ia_cp_hdr_init (int width, int height, const ia_binary_data * hdrb_data, ia_cp_target tgt);

/** @brief release and unmap intermediate HDR data buffers
 *
 * @return error status
 *
 * This function release all resources used for intermediate
 * data storage during HDR composition.
 */
LIBEXPORT ia_err
ia_cp_hdr_uninit (void);

/** @brief compose HDR image
 *
 * @param[out] out pointer to the HDR output buffer
 * @param[out] out_pv pointer to postview output buffer
 * @param[in] in pointer to the input frame sequence
 * @param[in] in_pv pointer to the downscaled input frame sequence
 * @param[in] num_frames number of input frames
 * @param[in] cfg configuration parameters
 * @return error status
 *
 * This function composes an HDR image. It produces and output HDR frame and a downscaled version
 * of the full resolution output. Composition of the output frame is controlled via configuration
 * structure given as an input.
 */
LIBEXPORT ia_err
ia_cp_hdr_compose (ia_frame            * out,
                   ia_frame            * out_pv,
                   const ia_frame      * in,
                   const ia_frame      * in_pv,
                   unsigned int          num_frames,
                   const ia_cp_hdr_cfg * cfg);

/** @brief abort HDR image composition
 *
 * @return error status
 *
 * This function aborts composition of an HDR image.
 */
LIBEXPORT ia_err
ia_cp_hdr_abort (void);

/** @brief initialize ULL parameters
 *
 * @param[in] width input frame width
 * @param[in] height input frame height
 * @param[in] ullb_data CPF binary data with tuning choices
 * @param[in] tgt target platform for ULL execution (host, ipu etc.)
 * @return error status
 *
 * This function initializes internals for ULL processing. It also
 * passes tuning choices set in the CPFF for the particular platform.
 * If ullb_data is NULL, default choices are used.
 */
LIBEXPORT ia_err
ia_cp_ull_init (int width, int height, const ia_binary_data * ullb_data, ia_cp_target tgt);

/** @brief deinitialize ULL internals
 *
 * @return error status
 *
 * This function release all resources used during ULL composition.
 */
LIBEXPORT ia_err
ia_cp_ull_uninit (void);

/** @brief compose ULL image
 *
 * @param[out] out pointer to the ULL output buffer
 * @param[out] out_pv pointer to postview output buffer
 * @param[in] in pointer to the input frame sequence
 * @param[in] in_pv pointer to the downscaled input frame sequence
 * @param[in] num_frames number of input frames
 * @param[in] cfg configuration parameters
 * @return error status
 *
 * This function composes a denoised image from a set of input images captured in exteme low-light
 * conditions. It produces an output frame and a downscaled version of the full resolution output.
 * Composition of the output frame is controlled via configuration structure given as an input.
 */
LIBEXPORT ia_err
ia_cp_ull_compose (ia_frame            * out,
                   ia_frame            * out_pv,
                   const ia_frame      * in,
                   const ia_frame      * in_pv,
                   unsigned int          num_frames,
                   const ia_cp_ull_cfg * cfg);

/** @brief abort ULL image composition
 *
 * @return error status
 *
 * This function aborts composition of a ULL image.
 */
LIBEXPORT ia_err
ia_cp_ull_abort (void);

/** @brief Estimate global motion between two frames
 *
 * @param[in] target pointer to the target buffer
 * @param[in] source pointer to the source buffer
 * @param[in] cfg configuration parameters
 * @param[out] result outcome of the estimation process
 * @return error status
 *
 * This function estimates global motion between the source frame and the target (base) frame. Results are
 * produced in a form of a 3x3 global transformation matrix sufficient to cover the most complex use case
 * of projective transformation. Estimation also advocates fallback in case the global motion was
 * sufficiently large.
 *
 */
LIBEXPORT ia_err
ia_cp_global_me (const ia_frame * target, const ia_frame * source, const ia_cp_me_cfg * cfg,
                 ia_cp_me_result * result);

/** @brief Compensate frame motion based on the transformation matrix
 *
 * @param[out] target pointer to the target buffer
 * @param[in] source pointer to the source buffer
 * @param[in] result outcome of the estimation process
 * @return error status
 *
 * This function compensates global motion based on the provided motion estimation results.
 *
 */
LIBEXPORT ia_err
ia_cp_global_mc (ia_frame * target, ia_frame * source, ia_cp_me_result * result);


/** @brief Zoom provided frame with specified zoom factor
 *
 * @param[inout] in_out frame
 * @param[in] zoom_factor
 * @return error status
 *
 * This function performs zooming of input frame with specified zoom factor.
 *
 */
LIBEXPORT ia_err
ia_cp_zoom_frame(ia_frame * in_out, int zoom_factor);

#ifdef __cplusplus
}
#endif

#endif /* _IA_CP_H */
