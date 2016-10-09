//
//  Liberation
//
//  Copyright © 2016 callum. All rights reserved.
//
#pragma once
#include <mach/arm/thread_status.h>
#include <sys/types.h>
#include "ThreadState.h"

class ARMv7ThreadState : public ThreadState {
public:
    ARMv7ThreadState(mach_port_t thread) : ThreadState(thread) {}

    virtual std::string Description() override;
    virtual bool Load() override;
    virtual bool Save() override;
    virtual vm_address_t CurrentAddress() override;

    arm_thread_state_t thread_state;

    // TODO: find out which of these states contains which float reg
    arm_vfp_state_t vfp_state;
    arm_neon_state_t neon_state;

    arm_exception_state_t exception_state;
    arm_debug_state_t debug_state;
};
