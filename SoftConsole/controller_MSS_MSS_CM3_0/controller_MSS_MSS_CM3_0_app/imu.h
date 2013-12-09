#pragma once
#ifndef __IMU_H__
#define __IMU_H__


#include "drivers/mss_i2c/mss_i2c.h"

#define IMU_ADDRESS_READ 0b11010001
#define IMU_ADDRESS_WRITE 0b11010000

#define XGYRO_OUT_LOWER 0x44
#define XGYRO_OUT_UPPER 0x43
#define YGYRO_OUT_LOWER 0x46
#define YGYRO_OUT_UPPER 0x45
#define ZGYRO_OUT_LOWER 0x48
#define ZGYRO_OUT_UPPER 0x47

#define XACCL_OUT_LOWER 0x3C
#define XACCL_OUT_UPPER 0x3B
#define YACCL_OUT_LOWER 0x3E
#define YACCL_OUT_UPPER 0x3D
#define ZACCL_OUT_LOWER 0x40
#define ZACCL_OUT_UPPER 0x3F

#define WHOAMI 0x75


int32_t X_ACCL_OFFSET;
int32_t X_GYRO_OFFSET;
int32_t Y_ACCL_OFFSET;

/*
 * sets up our imu configuration. This consists of:
 *     -setting sleep mode off
 */
void imu_init();


/*
 * Read accelerometer x value
 */
int16_t imu_accl_x();


/*
 * Read accelerometer y value
 */
int16_t imu_accl_y();


/*
 * Read accelerometer z value
 */
int16_t imu_accl_z();


/*
 * Read gyro x value
 */
int16_t imu_gyro_x();


/*
 * Read gyro y value
 */
uint16_t imu_gyro_y();


/*
 * Read gyro z value
 */
uint16_t imu_gyro_z();


/*
 * writes a byte to the specified IMU register
 */
void imu_write(uint8_t reg, uint8_t data);


/*
 * reads a byte from the specified IMU register
 */
uint8_t imu_read(uint8_t reg);

#endif
