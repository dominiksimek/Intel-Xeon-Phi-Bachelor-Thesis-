# mark_description "Intel(R) C++ Intel(R) 64 Compiler XE for applications running on Intel(R) MIC Architecture, Version 13.1.3.1";
# mark_description "92 Build 20130607";
# mark_description " -wd588 -ansi-alias -openmp -O2 -xavx -DN=1105920 -DDT=0.001f -DSTEPS=1 -S -fsource-asm -c";
	.file "nbody.cpp"
	.text
..TXTST0:
# -- Begin  _Z18particles_simulate14t_particles_DA, L__Z18particles_simulate14t_particles_DA_213__par_loop0_2.45, L__Z18particles_simulate14t_particles_DA_224__par_loop1_2.67, L__Z18particles_simulate14t_particles_DA_262__par_loop2_2.100, L__Z18particles_simulate14t_particles_DA_273__par_loop3_2.126, L__Z18particles_simulate14t_particles_DA_285__par_loop4_2.151
# mark_begin;
# Threads 4
        .align    16,0x90
	.globl _Z18particles_simulate14t_particles_DA
_Z18particles_simulate14t_particles_DA:
# parameter 1: 16 + %rbp
..B1.1:                         # Preds ..B1.0 Latency 17

### {

..___tag_value__Z18particles_simulate14t_particles_DA.1:        #208.1
        pushq     %rbp                                          #208.1
..___tag_value__Z18particles_simulate14t_particles_DA.3:        #
        movq      %rsp, %rbp                                    #208.1
..___tag_value__Z18particles_simulate14t_particles_DA.4:        #
        andq      $-64, %rsp                                    #208.1
        subq      $128, %rsp                                    #208.1 c1
        lea       .2.5_2_kmpc_loc_struct_pack.38(%rip), %rdi    #208.1 c1
        movq      %rbx, 80(%rsp)                                #208.1 c5
        movq      %r15, 48(%rsp)                                #208.1 c5
        movq      %r14, 56(%rsp)                                #208.1 c9
        movq      %r13, 64(%rsp)                                #208.1 c9
        movq      %r12, 72(%rsp)                                #208.1 c13
        call      __kmpc_global_thread_num@PLT                  #208.1 c17
..___tag_value__Z18particles_simulate14t_particles_DA.6:        #
                                # LOE eax
..B1.148:                       # Preds ..B1.1 Latency 9
        movl      %eax, (%rsp)                                  #208.1 c1

### 
###     // each step of simulation
###     for(unsigned step = 0; step < STEPS; step++)
###     {
###         #pragma omp parallel for

        lea       .2.5_2_kmpc_loc_struct_pack.47(%rip), %rdi    #213.9 c1
        xorl      %eax, %eax                                    #213.9 c5
..___tag_value__Z18particles_simulate14t_particles_DA.11:       #213.9
        call      __kmpc_ok_to_fork@PLT                         #213.9
..___tag_value__Z18particles_simulate14t_particles_DA.12:       #
                                # LOE eax
..B1.2:                         # Preds ..B1.148 Latency 1
        testl     %eax, %eax                                    #213.9 c1
        je        ..B1.4        # Prob 50%                      #213.9 c1
                                # LOE
..B1.3:                         # Preds ..B1.2 Latency 25
        lea       16(%rbp), %rbx                                #213.9 c1
        lea       88(%rbp), %r15                                #213.9 c1
        lea       L__Z18particles_simulate14t_particles_DA_213__par_loop0_2.45(%rip), %rdx #213.9 c5
        lea       72(%rbp), %r8                                 #213.9 c5
        lea       80(%rbp), %r9                                 #213.9 c9
        lea       .2.5_2_kmpc_loc_struct_pack.47(%rip), %rdi    #213.9 c9
        pushq     $4                                            #213.9 c13
        popq      %rsi                                          #213.9
        movq      %rbx, %rcx                                    #213.9 c13
        xorl      %eax, %eax                                    #213.9 c17
        pushq     %rsp                                          #213.9 c17
        pushq     %r15                                          #213.9 c21
..___tag_value__Z18particles_simulate14t_particles_DA.13:       #213.9
        call      __kmpc_fork_call@PLT                          #213.9
..___tag_value__Z18particles_simulate14t_particles_DA.14:       #
                                # LOE rbx r15
..B1.149:                       # Preds ..B1.3 Latency 2
        addq      $16, %rsp                                     #213.9 c1
        jmp       ..B1.7        # Prob 100%                     #213.9 c1
                                # LOE rbx r15
..B1.4:                         # Preds ..B1.2 Latency 9
        movl      (%rsp), %esi                                  #213.9 c1
        lea       .2.5_2_kmpc_loc_struct_pack.47(%rip), %rdi    #213.9 c1
        xorl      %eax, %eax                                    #213.9 c5
..___tag_value__Z18particles_simulate14t_particles_DA.15:       #213.9
        call      __kmpc_serialized_parallel@PLT                #213.9
..___tag_value__Z18particles_simulate14t_particles_DA.16:       #
                                # LOE
..B1.5:                         # Preds ..B1.4 Latency 17
        lea       16(%rbp), %rbx                                #213.9 c1
        lea       88(%rbp), %r15                                #213.9 c1
        lea       (%rsp), %rdi                                  #213.9 c5
        lea       ___kmpv_zero_Z18particles_simulate14t_particles_DA_0(%rip), %rsi #213.9 c5
        lea       72(%rbp), %rcx                                #213.9 c9
        lea       80(%rbp), %r8                                 #213.9 c9
        movq      %rbx, %rdx                                    #213.9 c13
        movq      %r15, %r9                                     #213.9 c13
..___tag_value__Z18particles_simulate14t_particles_DA.17:       #213.9
        call      L__Z18particles_simulate14t_particles_DA_213__par_loop0_2.45 #213.9
..___tag_value__Z18particles_simulate14t_particles_DA.18:       #
                                # LOE rbx r15
..B1.6:                         # Preds ..B1.5 Latency 9
        movl      (%rsp), %esi                                  #213.9 c1
        lea       .2.5_2_kmpc_loc_struct_pack.47(%rip), %rdi    #213.9 c1
        xorl      %eax, %eax                                    #213.9 c5
..___tag_value__Z18particles_simulate14t_particles_DA.19:       #213.9
        call      __kmpc_end_serialized_parallel@PLT            #213.9
..___tag_value__Z18particles_simulate14t_particles_DA.20:       #
                                # LOE rbx r15
..B1.7:                         # Preds ..B1.6 ..B1.149 Latency 5

###         //#pragma vector aligned
###         #pragma simd
###         for(unsigned j = 0; j < N; j++)
###         {
###             p.fx[j] = 0.0f;
###             p.fy[j] = 0.0f;
###             p.fz[j] = 0.0f;
###         }
### 
###         // iterate over all particles
###         #pragma omp parallel for

        lea       .2.5_2_kmpc_loc_struct_pack.69(%rip), %rdi    #224.9 c1
        xorl      %eax, %eax                                    #224.9 c1
..___tag_value__Z18particles_simulate14t_particles_DA.21:       #224.9
        call      __kmpc_ok_to_fork@PLT                         #224.9
..___tag_value__Z18particles_simulate14t_particles_DA.22:       #
                                # LOE rbx r15 eax
..B1.8:                         # Preds ..B1.7 Latency 1
        testl     %eax, %eax                                    #224.9 c1
        je        ..B1.10       # Prob 50%                      #224.9 c1
                                # LOE rbx r15
..B1.9:                         # Preds ..B1.8 Latency 41
        lea       80(%rbp), %r10                                #224.9 c1
        lea       64(%rbp), %r14                                #224.9 c1
        lea       72(%rbp), %r11                                #224.9 c5
        lea       32(%rbp), %r13                                #224.9 c5
        pushq     %rsp                                          #224.9 c9
        lea       L__Z18particles_simulate14t_particles_DA_224__par_loop1_2.67(%rip), %rdx #224.9 c9
        lea       24(%rbp), %r9                                 #224.9 c13
        pushq     %r15                                          #224.9 c13
        lea       .2.5_2_kmpc_loc_struct_pack.69(%rip), %rdi    #224.9 c17
        pushq     $8                                            #224.9 c17
        popq      %rsi                                          #224.9
        movq      %rbx, %rcx                                    #224.9 c21
        movq      %rbx, %r8                                     #224.9 c21
        xorl      %eax, %eax                                    #224.9 c25
        pushq     %r10                                          #224.9 c25
        pushq     %r14                                          #224.9 c29
        pushq     %r11                                          #224.9 c33
        pushq     %r13                                          #224.9 c37
..___tag_value__Z18particles_simulate14t_particles_DA.23:       #224.9
        call      __kmpc_fork_call@PLT                          #224.9
..___tag_value__Z18particles_simulate14t_particles_DA.24:       #
                                # LOE rbx r13 r14 r15
..B1.151:                       # Preds ..B1.9 Latency 2
        addq      $48, %rsp                                     #224.9 c1
        jmp       ..B1.13       # Prob 100%                     #224.9 c1
                                # LOE rbx r13 r14 r15
..B1.10:                        # Preds ..B1.8 Latency 9
        movl      (%rsp), %esi                                  #224.9 c1
        lea       .2.5_2_kmpc_loc_struct_pack.69(%rip), %rdi    #224.9 c1
        xorl      %eax, %eax                                    #224.9 c5
..___tag_value__Z18particles_simulate14t_particles_DA.25:       #224.9
        call      __kmpc_serialized_parallel@PLT                #224.9
..___tag_value__Z18particles_simulate14t_particles_DA.26:       #
                                # LOE rbx r15
..B1.11:                        # Preds ..B1.10 Latency 37
        lea       32(%rbp), %r13                                #224.9 c1
        lea       80(%rbp), %rax                                #224.9 c1
        lea       64(%rbp), %r14                                #224.9 c5
        lea       72(%rbp), %r10                                #224.9 c5
        lea       (%rsp), %rdi                                  #224.9 c9
        lea       ___kmpv_zero_Z18particles_simulate14t_particles_DA_1(%rip), %rsi #224.9 c9
        lea       24(%rbp), %r8                                 #224.9 c13
        movq      %rbx, %rdx                                    #224.9 c13
        movq      %rbx, %rcx                                    #224.9 c17
        movq      %r13, %r9                                     #224.9 c17
        pushq     %r15                                          #224.9 c21
        pushq     %rax                                          #224.9 c25
        pushq     %r14                                          #224.9 c29
        pushq     %r10                                          #224.9 c33
..___tag_value__Z18particles_simulate14t_particles_DA.27:       #224.9
        call      L__Z18particles_simulate14t_particles_DA_224__par_loop1_2.67 #224.9
..___tag_value__Z18particles_simulate14t_particles_DA.28:       #
                                # LOE rbx r13 r14 r15
..B1.152:                       # Preds ..B1.11 Latency 1
        addq      $32, %rsp                                     #224.9 c1
                                # LOE rbx r13 r14 r15
..B1.12:                        # Preds ..B1.152 Latency 9
        movl      (%rsp), %esi                                  #224.9 c1
        lea       .2.5_2_kmpc_loc_struct_pack.69(%rip), %rdi    #224.9 c1
        xorl      %eax, %eax                                    #224.9 c5
..___tag_value__Z18particles_simulate14t_particles_DA.29:       #224.9
        call      __kmpc_end_serialized_parallel@PLT            #224.9
..___tag_value__Z18particles_simulate14t_particles_DA.30:       #
                                # LOE rbx r13 r14 r15
..B1.13:                        # Preds ..B1.151 ..B1.12 Latency 5

###         #pragma vector aligned
###         for(unsigned i = 0; i < N; i++)
###         {
###             float dx, dy, dz;   // distance X, Y, Z
###             float dist_sqr;     // distance^2
###             float inv_dist;     // inverted distance
###             float inv_dist3;    // inverted distance^3
### 
###             // calculate force between particle[i] and others
###             #pragma vector aligned
###             #pragma simd
###             for(unsigned j = 0; j < N; j++)
###             {
###                 // compute distance of bodies
###                 dx = p.pos_x[j] - p.pos_x[i]; // x
###                 dy = p.pos_y[j] - p.pos_y[i]; // y
###                 dz = p.pos_z[j] - p.pos_z[i]; // z
### 
###                 // distance in 3D
###                 dist_sqr = dx*dx + dy*dy + dz*dz + SML_FLT;
### 
###                 // inverted distance for better performance
###                 inv_dist = 1.0f / sqrt(dist_sqr);
### 
###                 // invertovana vzdialenost^3
###                 inv_dist3 = inv_dist * inv_dist * inv_dist;
### 
###                 // calculate increment of force
###                 p.fx[i] += dx * ((p.weight[i] * p.weight[j] * G) * inv_dist3);
###                 p.fy[i] += dy * ((p.weight[i] * p.weight[j] * G) * inv_dist3);
###                 p.fz[i] += dz * ((p.weight[i] * p.weight[j] * G) * inv_dist3);
### 
###             }
### 
###         }
### 
###         // calculate acceleration
###         #pragma omp parallel for

        lea       .2.5_2_kmpc_loc_struct_pack.102(%rip), %rdi   #262.9 c1
        xorl      %eax, %eax                                    #262.9 c1
..___tag_value__Z18particles_simulate14t_particles_DA.31:       #262.9
        call      __kmpc_ok_to_fork@PLT                         #262.9
..___tag_value__Z18particles_simulate14t_particles_DA.32:       #
                                # LOE rbx r13 r14 r15 eax
..B1.14:                        # Preds ..B1.13 Latency 1
        testl     %eax, %eax                                    #262.9 c1
        je        ..B1.16       # Prob 50%                      #262.9 c1
                                # LOE rbx r13 r14 r15
..B1.15:                        # Preds ..B1.14 Latency 41
        lea       96(%rbp), %r12                                #262.9 c1
        lea       112(%rbp), %r10                               #262.9 c1
        pushq     %rsp                                          #262.9 c5
        lea       104(%rbp), %r11                               #262.9 c5
        pushq     %r15                                          #262.9 c9
        lea       80(%rbp), %r15                                #262.9 c9
        lea       L__Z18particles_simulate14t_particles_DA_262__par_loop2_2.100(%rip), %rdx #262.9 c13
        lea       .2.5_2_kmpc_loc_struct_pack.102(%rip), %rdi   #262.9 c13
        pushq     $8                                            #262.9 c17
        popq      %rsi                                          #262.9
        movq      %rbx, %rcx                                    #262.9 c17
        movq      %r12, %r8                                     #262.9 c21
        lea       72(%rbp), %r9                                 #262.9 c21
        xorl      %eax, %eax                                    #262.9 c25
        pushq     %r10                                          #262.9 c25
        pushq     %r15                                          #262.9 c29
        pushq     %r11                                          #262.9 c33
        pushq     %r14                                          #262.9 c37
..___tag_value__Z18particles_simulate14t_particles_DA.33:       #262.9
        call      __kmpc_fork_call@PLT                          #262.9
..___tag_value__Z18particles_simulate14t_particles_DA.34:       #
                                # LOE rbx r12 r13
..B1.154:                       # Preds ..B1.15 Latency 2
        addq      $48, %rsp                                     #262.9 c1
        jmp       ..B1.19       # Prob 100%                     #262.9 c1
                                # LOE rbx r12 r13
..B1.16:                        # Preds ..B1.14 Latency 9
        movl      (%rsp), %esi                                  #262.9 c1
        lea       .2.5_2_kmpc_loc_struct_pack.102(%rip), %rdi   #262.9 c1
        xorl      %eax, %eax                                    #262.9 c5
..___tag_value__Z18particles_simulate14t_particles_DA.35:       #262.9
        call      __kmpc_serialized_parallel@PLT                #262.9
..___tag_value__Z18particles_simulate14t_particles_DA.36:       #
                                # LOE rbx r13 r14 r15
..B1.17:                        # Preds ..B1.16 Latency 33
        lea       96(%rbp), %r12                                #262.9 c1
        lea       112(%rbp), %rax                               #262.9 c1
        lea       (%rsp), %rdi                                  #262.9 c5
        pushq     %r15                                          #262.9 c5
        lea       80(%rbp), %r15                                #262.9 c9
        lea       104(%rbp), %r10                               #262.9 c9
        lea       ___kmpv_zero_Z18particles_simulate14t_particles_DA_2(%rip), %rsi #262.9 c13
        movq      %rbx, %rdx                                    #262.9 c13
        movq      %r12, %rcx                                    #262.9 c17
        lea       72(%rbp), %r8                                 #262.9 c17
        movq      %r14, %r9                                     #262.9 c21
        pushq     %rax                                          #262.9 c21
        pushq     %r15                                          #262.9 c25
        pushq     %r10                                          #262.9 c29
..___tag_value__Z18particles_simulate14t_particles_DA.37:       #262.9
        call      L__Z18particles_simulate14t_particles_DA_262__par_loop2_2.100 #262.9
..___tag_value__Z18particles_simulate14t_particles_DA.38:       #
                                # LOE rbx r12 r13
..B1.155:                       # Preds ..B1.17 Latency 1
        addq      $32, %rsp                                     #262.9 c1
                                # LOE rbx r12 r13
..B1.18:                        # Preds ..B1.155 Latency 9
        movl      (%rsp), %esi                                  #262.9 c1
        lea       .2.5_2_kmpc_loc_struct_pack.102(%rip), %rdi   #262.9 c1
        xorl      %eax, %eax                                    #262.9 c5
..___tag_value__Z18particles_simulate14t_particles_DA.39:       #262.9
        call      __kmpc_end_serialized_parallel@PLT            #262.9
..___tag_value__Z18particles_simulate14t_particles_DA.40:       #
                                # LOE rbx r12 r13
..B1.19:                        # Preds ..B1.18 ..B1.154 Latency 5

###         //#pragma vector aligned
###         #pragma simd
###         for(unsigned i = 0; i < N; i++)
###         {
###             p.ax[i] = p.fx[i] / p.weight[i];
###             p.ay[i] = p.fy[i] / p.weight[i];
###             p.az[i] = p.fz[i] / p.weight[i];
###         }
### 
###         // calculate velocity
###         #pragma omp parallel for

        lea       .2.5_2_kmpc_loc_struct_pack.128(%rip), %rdi   #273.9 c1
        xorl      %eax, %eax                                    #273.9 c1
..___tag_value__Z18particles_simulate14t_particles_DA.41:       #273.9
        call      __kmpc_ok_to_fork@PLT                         #273.9
..___tag_value__Z18particles_simulate14t_particles_DA.42:       #
                                # LOE rbx r12 r13 eax
..B1.20:                        # Preds ..B1.19 Latency 1
        testl     %eax, %eax                                    #273.9 c1
        je        ..B1.22       # Prob 50%                      #273.9 c1
                                # LOE rbx r12 r13
..B1.21:                        # Preds ..B1.20 Latency 33
        lea       112(%rbp), %r10                               #273.9 c1
        lea       56(%rbp), %r15                                #273.9 c1
        lea       104(%rbp), %r11                               #273.9 c5
        lea       40(%rbp), %r14                                #273.9 c5
        lea       48(%rbp), %rsi                                #273.9 c9
        pushq     %r10                                          #273.9 c9
        pushq     %r15                                          #273.9 c13
        lea       L__Z18particles_simulate14t_particles_DA_273__par_loop3_2.126(%rip), %rdx #273.9 c13
        pushq     %r11                                          #273.9 c17
        lea       .2.5_2_kmpc_loc_struct_pack.128(%rip), %rdi   #273.9 c17
        pushq     %rsi                                          #273.9 c21
        pushq     $7                                            #273.9 c21
        popq      %rsi                                          #273.9
        movq      %rbx, %rcx                                    #273.9 c25
        movq      %r14, %r8                                     #273.9 c25
        movq      %r12, %r9                                     #273.9 c29
        xorl      %eax, %eax                                    #273.9 c29
..___tag_value__Z18particles_simulate14t_particles_DA.43:       #273.9
        call      __kmpc_fork_call@PLT                          #273.9
..___tag_value__Z18particles_simulate14t_particles_DA.44:       #
                                # LOE rbx r13 r14 r15
..B1.157:                       # Preds ..B1.21 Latency 2
        addq      $32, %rsp                                     #273.9 c1
        jmp       ..B1.25       # Prob 100%                     #273.9 c1
                                # LOE rbx r13 r14 r15
..B1.22:                        # Preds ..B1.20 Latency 9
        movl      (%rsp), %esi                                  #273.9 c1
        lea       .2.5_2_kmpc_loc_struct_pack.128(%rip), %rdi   #273.9 c1
        xorl      %eax, %eax                                    #273.9 c5
..___tag_value__Z18particles_simulate14t_particles_DA.45:       #273.9
        call      __kmpc_serialized_parallel@PLT                #273.9
..___tag_value__Z18particles_simulate14t_particles_DA.46:       #
                                # LOE rbx r12 r13
..B1.23:                        # Preds ..B1.22 Latency 37
        lea       40(%rbp), %r14                                #273.9 c1
        lea       112(%rbp), %rax                               #273.9 c1
        lea       56(%rbp), %r15                                #273.9 c5
        lea       104(%rbp), %r10                               #273.9 c5
        lea       (%rsp), %rdi                                  #273.9 c9
        lea       ___kmpv_zero_Z18particles_simulate14t_particles_DA_3(%rip), %rsi #273.9 c9
        lea       48(%rbp), %r9                                 #273.9 c13
        movq      %rbx, %rdx                                    #273.9 c13
        movq      %r14, %rcx                                    #273.9 c17
        movq      %r12, %r8                                     #273.9 c17
        pushq     %rsp                                          #273.9 c21
        pushq     %rax                                          #273.9 c25
        pushq     %r15                                          #273.9 c29
        pushq     %r10                                          #273.9 c33
..___tag_value__Z18particles_simulate14t_particles_DA.47:       #273.9
        call      L__Z18particles_simulate14t_particles_DA_273__par_loop3_2.126 #273.9
..___tag_value__Z18particles_simulate14t_particles_DA.48:       #
                                # LOE rbx r13 r14 r15
..B1.158:                       # Preds ..B1.23 Latency 1
        addq      $32, %rsp                                     #273.9 c1
                                # LOE rbx r13 r14 r15
..B1.24:                        # Preds ..B1.158 Latency 9
        movl      (%rsp), %esi                                  #273.9 c1
        lea       .2.5_2_kmpc_loc_struct_pack.128(%rip), %rdi   #273.9 c1
        xorl      %eax, %eax                                    #273.9 c5
..___tag_value__Z18particles_simulate14t_particles_DA.49:       #273.9
        call      __kmpc_end_serialized_parallel@PLT            #273.9
..___tag_value__Z18particles_simulate14t_particles_DA.50:       #
                                # LOE rbx r13 r14 r15
..B1.25:                        # Preds ..B1.24 ..B1.157 Latency 5

###         //#pragma vector aligned
###         #pragma simd
###         for(unsigned i = 0; i < N; i++)
###         {
###             p.vel_x[i] += DT * p.ax[i];
###             p.vel_y[i] += DT * p.ay[i];
###             p.vel_z[i] += DT * p.az[i];
### 
###         }
### 
###         // calculate position
###         #pragma omp parallel for

        lea       .2.5_2_kmpc_loc_struct_pack.153(%rip), %rdi   #285.9 c1
        xorl      %eax, %eax                                    #285.9 c1
..___tag_value__Z18particles_simulate14t_particles_DA.51:       #285.9
        call      __kmpc_ok_to_fork@PLT                         #285.9
..___tag_value__Z18particles_simulate14t_particles_DA.52:       #
                                # LOE rbx r13 r14 r15 eax
..B1.26:                        # Preds ..B1.25 Latency 1
        testl     %eax, %eax                                    #285.9 c1
        je        ..B1.28       # Prob 50%                      #285.9 c1
                                # LOE rbx r13 r14 r15
..B1.27:                        # Preds ..B1.26 Latency 29
        pushq     %r15                                          #285.9 c1
        lea       24(%rbp), %r15                                #285.9 c1
        pushq     %r13                                          #285.9 c5
        lea       48(%rbp), %r13                                #285.9 c5
        lea       L__Z18particles_simulate14t_particles_DA_285__par_loop4_2.151(%rip), %rdx #285.9 c9
        lea       .2.5_2_kmpc_loc_struct_pack.153(%rip), %rdi   #285.9 c9
        pushq     $7                                            #285.9 c13
        popq      %rsi                                          #285.9
        movq      %rbx, %rcx                                    #285.9 c13
        movq      %rbx, %r8                                     #285.9 c17
        movq      %r14, %r9                                     #285.9 c17
        xorl      %eax, %eax                                    #285.9 c21
        pushq     %r13                                          #285.9 c21
        pushq     %r15                                          #285.9 c25
..___tag_value__Z18particles_simulate14t_particles_DA.53:       #285.9
        call      __kmpc_fork_call@PLT                          #285.9
..___tag_value__Z18particles_simulate14t_particles_DA.54:       #
                                # LOE
..B1.160:                       # Preds ..B1.27 Latency 2
        addq      $32, %rsp                                     #285.9 c1
        jmp       ..B1.31       # Prob 100%                     #285.9 c1
                                # LOE
..B1.28:                        # Preds ..B1.26 Latency 9
        movl      (%rsp), %esi                                  #285.9 c1
        lea       .2.5_2_kmpc_loc_struct_pack.153(%rip), %rdi   #285.9 c1
        xorl      %eax, %eax                                    #285.9 c5
..___tag_value__Z18particles_simulate14t_particles_DA.55:       #285.9
        call      __kmpc_serialized_parallel@PLT                #285.9
..___tag_value__Z18particles_simulate14t_particles_DA.56:       #
                                # LOE rbx r13 r14 r15
..B1.29:                        # Preds ..B1.28 Latency 25
        lea       (%rsp), %rdi                                  #285.9 c1
        pushq     %rsp                                          #285.9 c1
        pushq     %r15                                          #285.9 c5
        lea       ___kmpv_zero_Z18particles_simulate14t_particles_DA_4(%rip), %rsi #285.9 c5
        pushq     %r13                                          #285.9 c9
        lea       48(%rbp), %r13                                #285.9 c9
        movq      %rbx, %rdx                                    #285.9 c13
        movq      %rbx, %rcx                                    #285.9 c13
        movq      %r14, %r8                                     #285.9 c17
        lea       24(%rbp), %r9                                 #285.9 c17
        pushq     %r13                                          #285.9 c21
..___tag_value__Z18particles_simulate14t_particles_DA.57:       #285.9
        call      L__Z18particles_simulate14t_particles_DA_285__par_loop4_2.151 #285.9
..___tag_value__Z18particles_simulate14t_particles_DA.58:       #
                                # LOE
..B1.161:                       # Preds ..B1.29 Latency 1
        addq      $32, %rsp                                     #285.9 c1
                                # LOE
..B1.30:                        # Preds ..B1.161 Latency 9
        movl      (%rsp), %esi                                  #285.9 c1
        lea       .2.5_2_kmpc_loc_struct_pack.153(%rip), %rdi   #285.9 c1
        xorl      %eax, %eax                                    #285.9 c5
..___tag_value__Z18particles_simulate14t_particles_DA.59:       #285.9
        call      __kmpc_end_serialized_parallel@PLT            #285.9
..___tag_value__Z18particles_simulate14t_particles_DA.60:       #
                                # LOE
..B1.31:                        # Preds ..B1.30 ..B1.160 Latency 13

###         //#pragma vector aligned
###         #pragma simd
###         for(unsigned i = 0; i < N; i++)
###         {
###            p.pos_x[i] += p.vel_x[i] * DT;
###            p.pos_y[i] += p.vel_y[i] * DT;
###            p.pos_z[i] += p.vel_z[i] * DT;
###         }
### 
###     }
### 
###     return;

        movq      48(%rsp), %r15                                #297.5 c1
..___tag_value__Z18particles_simulate14t_particles_DA.61:       #
        movq      56(%rsp), %r14                                #297.5 c1
..___tag_value__Z18particles_simulate14t_particles_DA.62:       #
        movq      64(%rsp), %r13                                #297.5 c5
..___tag_value__Z18particles_simulate14t_particles_DA.63:       #
        movq      72(%rsp), %r12                                #297.5 c5
..___tag_value__Z18particles_simulate14t_particles_DA.64:       #
        movq      80(%rsp), %rbx                                #297.5 c9
..___tag_value__Z18particles_simulate14t_particles_DA.65:       #
        movq      %rbp, %rsp                                    #297.5 c13
        popq      %rbp                                          #297.5
..___tag_value__Z18particles_simulate14t_particles_DA.66:       #
        ret                                                     #297.5
..___tag_value__Z18particles_simulate14t_particles_DA.68:       #
                                # LOE
L__Z18particles_simulate14t_particles_DA_285__par_loop4_2.151:
# parameter 1: %rdi
# parameter 2: %rsi
# parameter 3: %rdx
# parameter 4: %rcx
# parameter 5: %r8
# parameter 6: %r9
# parameter 7: 16 + %rbp
# parameter 8: 24 + %rbp
# parameter 9: 32 + %rbp
..B1.32:                        # Preds ..B1.0 Latency 61
        pushq     %rbp                                          #285.9
..___tag_value__Z18particles_simulate14t_particles_DA.70:       #
        movq      %rsp, %rbp                                    #285.9
..___tag_value__Z18particles_simulate14t_particles_DA.71:       #
        andq      $-64, %rsp                                    #285.9
        subq      $128, %rsp                                    #285.9 c1
        movl      $1, %r11d                                     #285.9 c1
        movq      %r13, 64(%rsp)                                #285.9 c5
..___tag_value__Z18particles_simulate14t_particles_DA.73:       #
        xorl      %r13d, %r13d                                  #285.9 c5
        movq      %rbx, 80(%rsp)                                #285.9 c9
..___tag_value__Z18particles_simulate14t_particles_DA.74:       #
        movq      %rdx, %rbx                                    #285.9 c9
        movq      %r15, 48(%rsp)                                #285.9 c13
        movl      $34, %edx                                     #285.9 c13
        movq      %r14, 56(%rsp)                                #285.9 c17
        xorl      %eax, %eax                                    #285.9 c17
        movq      %r12, 72(%rsp)                                #285.9 c21
..___tag_value__Z18particles_simulate14t_particles_DA.75:       #
        movl      (%rdi), %r12d                                 #285.9 c21
        movl      $1105919, 20(%rsp)                            #285.9 c25
        movl      %r13d, 16(%rsp)                               #285.9 c29
        lea       .2.5_2_kmpc_loc_struct_pack.153(%rip), %rdi   #285.9 c29
        movl      %r13d, 24(%rsp)                               #285.9 c33
        movl      %r12d, %esi                                   #285.9 c33
        movl      %r11d, 28(%rsp)                               #285.9 c37
        addq      $-32, %rsp                                    #285.9 c37
        lea       60(%rsp), %r10                                #285.9 c41
        lea       56(%rsp), %rcx                                #285.9 c41
        lea       48(%rsp), %r8                                 #285.9 c45
        lea       52(%rsp), %r9                                 #285.9 c45
        movq      %r10, (%rsp)                                  #285.9 c49
        movl      %r11d, 8(%rsp)                                #285.9 c53
        movl      %r11d, 16(%rsp)                               #285.9 c57
..___tag_value__Z18particles_simulate14t_particles_DA.78:       #285.9
        call      __kmpc_for_static_init_4u@PLT                 #285.9
..___tag_value__Z18particles_simulate14t_particles_DA.79:       #
                                # LOE rbx r12d r13d
..B1.162:                       # Preds ..B1.32 Latency 1
        addq      $32, %rsp                                     #285.9 c1
                                # LOE rbx r12d r13d
..B1.33:                        # Preds ..B1.162 Latency 9
        movl      16(%rsp), %esi                                #285.9 c1
        movl      20(%rsp), %edi                                #285.9 c1
        cmpl      $1105919, 16(%rsp)                            #285.9 c5
        ja        ..B1.55       # Prob 50%                      #285.9 c9
                                # LOE rbx esi edi r12d r13d
..B1.34:                        # Preds ..B1.33 Latency 9
        cmpl      $1105919, %edi                                #285.9 c1
        jb        ..L80         # Prob 50%                      #285.9 c5
        movl      $1105919, %edi                                #285.9
..L80:                                                          #
        cmpl      %esi, %edi                                    #288.33 c9
        jb        ..B1.55       # Prob 50%                      #288.33 c9
                                # LOE rbx esi edi r12d r13d
..B1.35:                        # Preds ..B1.34 Latency 25
        movq      16(%rbx), %r10                                #292.12 c1
        movl      %esi, %r15d                                   #292.12 c1
        lea       (%r10,%r15,4), %rdx                           #292.12 c5
        subl      %esi, %edi                                    #288.9 c5
        andq      $63, %rdx                                     #288.9 c9
        incl      %edi                                          #288.9 c9
        movq      (%rbx), %r14                                  #290.12 c13
        movq      24(%rbx), %r11                                #290.26 c13
        movq      8(%rbx), %r9                                  #291.12 c17
        movq      32(%rbx), %r8                                 #291.26 c17
        movq      40(%rbx), %rbx                                #292.26 c21
        testl     %edx, %edx                                    #288.9 c21
        je        ..B1.37       # Prob 50%                      #288.9 c25
                                # LOE rbx r8 r9 r10 r11 r14 r15 edx esi edi r12d r13d
..B1.36:                        # Preds ..B1.35 Latency 17
        negl      %edx                                          #288.9 c1
        addl      $64, %edx                                     #288.9 c5
        shrl      $2, %edx                                      #288.9 c9
        cmpl      %edx, %edi                                    #288.9 c13
        jge       ..L81         # Prob 50%                      #288.9 c17
        movl      %edi, %edx                                    #288.9
..L81:                                                          #
                                # LOE rbx r8 r9 r10 r11 r14 r15 edx esi edi r12d r13d
..B1.37:                        # Preds ..B1.36 ..B1.35 Latency 21
        movl      %edi, %ecx                                    #288.9 c1
        subl      %edx, %ecx                                    #288.9 c5
        andl      $31, %ecx                                     #288.9 c9
        negl      %ecx                                          #288.9 c13
        addl      %edi, %ecx                                    #288.9 c17
        cmpl      $1, %edx                                      #288.9 c21
        jb        ..B1.41       # Prob 50%                      #288.9 c21
                                # LOE rbx r8 r9 r10 r11 r14 r15 edx ecx esi edi r12d r13d
..B1.38:                        # Preds ..B1.37 Latency 25
        movl      %edx, 40(%rsp)                                #288.9 c1
        movl      %r13d, %eax                                   #288.9 c1
        vpbroadcastd .L_2il0floatpacket.223(%rip), %zmm4        #288.9 c5
        vmovaps   .L_2il0floatpacket.224(%rip), %zmm3           #288.9 c9
        vbroadcastss .L_2il0floatpacket.225(%rip), %zmm2        #290.39 c13
        vpbroadcastd 40(%rsp), %zmm1                            #288.9 c17
        movq      %r15, (%rsp)                                  #288.9 c17
        movl      %r12d, 8(%rsp)                                #288.9 c21
        vmovaps   .L_2il0floatpacket.226(%rip), %zmm0           #288.9 c25
                                # LOE rbx r8 r9 r10 r11 r14 eax edx ecx esi edi zmm0 zmm1 zmm2 zmm3 zmm4
..B1.39:                        # Preds ..B1.39 ..B1.38 Latency 133
        vpcmpud   $6, %zmm1, %zmm3, %k0                         #288.9 c1
        lea       (%rsi,%rax), %r12d                            #290.12 c1
        vpxord    %zmm6, %zmm6, %zmm6                           #290.12 c5
        lea       (%r14,%r12,4), %r15                           #290.12 c5
        vpxord    %zmm5, %zmm5, %zmm5                           #290.26 c9
        lea       (%r11,%r12,4), %r13                           #290.26 c9
        vpxord    %zmm8, %zmm8, %zmm8                           #291.12 c13
        knot      %k0, %k1                                      #288.9 c13
        vpxord    %zmm7, %zmm7, %zmm7                           #291.26 c17
        kmov      %k1, %k2                                      #290.12 c17
..L83:                                                          #290.12
        vgatherdps (%r15,%zmm0,4), %zmm6{%k2}                   #290.12
        jkzd      ..L82, %k2    # Prob 50%                      #290.12
        vgatherdps (%r15,%zmm0,4), %zmm6{%k2}                   #290.12
        jknzd     ..L83, %k2    # Prob 50%                      #290.12
..L82:                                                          #
        vpxord    %zmm10, %zmm10, %zmm10                        #292.12 c29
        kmov      %k1, %k3                                      #290.26 c29
..L85:                                                          #290.26
        vgatherdps (%r13,%zmm0,4), %zmm5{%k3}                   #290.26
        jkzd      ..L84, %k3    # Prob 50%                      #290.26
        vgatherdps (%r13,%zmm0,4), %zmm5{%k3}                   #290.26
        jknzd     ..L85, %k3    # Prob 50%                      #290.26
..L84:                                                          #
        vfmadd231ps %zmm2, %zmm5, %zmm6                         #290.12 c41
        kmov      %k1, %k4                                      #290.12 c41
        vpxord    %zmm9, %zmm9, %zmm9                           #292.26 c45
        lea       (%r8,%r12,4), %r13                            #291.26 c45
..L87:                                                          #290.12
        vscatterdps %zmm6, (%r15,%zmm0,4){%k4}                  #290.12
        jkzd      ..L86, %k4    # Prob 50%                      #290.12
        vscatterdps %zmm6, (%r15,%zmm0,4){%k4}                  #290.12
        jknzd     ..L87, %k4    # Prob 50%                      #290.12
..L86:                                                          #
        kmov      %k1, %k5                                      #291.12 c57
        kmov      %k1, %k6                                      #291.26 c57
..L89:                                                          #291.26
        vgatherdps (%r13,%zmm0,4), %zmm7{%k6}                   #291.26
        jkzd      ..L88, %k6    # Prob 50%                      #291.26
        vgatherdps (%r13,%zmm0,4), %zmm7{%k6}                   #291.26
        jknzd     ..L89, %k6    # Prob 50%                      #291.26
..L88:                                                          #
        lea       (%r9,%r12,4), %r15                            #291.12 c69
        kmov      %k1, %k7                                      #291.12 c69
..L91:                                                          #291.12
        vgatherdps (%r15,%zmm0,4), %zmm8{%k5}                   #291.12
        jkzd      ..L90, %k5    # Prob 50%                      #291.12
        vgatherdps (%r15,%zmm0,4), %zmm8{%k5}                   #291.12
        jknzd     ..L91, %k5    # Prob 50%                      #291.12
..L90:                                                          #
        lea       (%r10,%r12,4), %r13                           #292.12 c81
        lea       (%rbx,%r12,4), %r12                           #292.26 c81
        vfmadd231ps %zmm2, %zmm7, %zmm8                         #291.12 c85
        kmov      %k1, %k2                                      #292.12 c85
        kmov      %k1, %k3                                      #292.26 c89
        addl      $16, %eax                                     #288.9 c89
..L93:                                                          #291.12
        vscatterdps %zmm8, (%r15,%zmm0,4){%k7}                  #291.12
        jkzd      ..L92, %k7    # Prob 50%                      #291.12
        vscatterdps %zmm8, (%r15,%zmm0,4){%k7}                  #291.12
        jknzd     ..L93, %k7    # Prob 50%                      #291.12
..L92:                                                          #
..L95:                                                          #292.12
        vgatherdps (%r13,%zmm0,4), %zmm10{%k2}                  #292.12
        jkzd      ..L94, %k2    # Prob 50%                      #292.12
        vgatherdps (%r13,%zmm0,4), %zmm10{%k2}                  #292.12
        jknzd     ..L95, %k2    # Prob 50%                      #292.12
..L94:                                                          #
..L97:                                                          #292.26
        vgatherdps (%r12,%zmm0,4), %zmm9{%k3}                   #292.26
        jkzd      ..L96, %k3    # Prob 50%                      #292.26
        vgatherdps (%r12,%zmm0,4), %zmm9{%k3}                   #292.26
        jknzd     ..L97, %k3    # Prob 50%                      #292.26
..L96:                                                          #
        vfmadd231ps %zmm2, %zmm9, %zmm10                        #292.12 c117
        vpaddd    %zmm4, %zmm3, %zmm3                           #292.12 c121
..L99:                                                          #292.12
        vscatterdps %zmm10, (%r13,%zmm0,4){%k1}                 #292.12
        jkzd      ..L98, %k1    # Prob 50%                      #292.12
        vscatterdps %zmm10, (%r13,%zmm0,4){%k1}                 #292.12
        jknzd     ..L99, %k1    # Prob 50%                      #292.12
..L98:                                                          #
        cmpl      %edx, %eax                                    #288.9 c133
        jb        ..B1.39       # Prob 99%                      #288.9 c133
                                # LOE rbx r8 r9 r10 r11 r14 eax edx ecx esi edi zmm0 zmm1 zmm2 zmm3 zmm4
..B1.40:                        # Preds ..B1.39 Latency 9
        movq      (%rsp), %r15                                  # c1
        xorl      %r13d, %r13d                                  # c1
        movl      8(%rsp), %r12d                                # c5
        cmpl      %edx, %edi                                    #288.9 c5
        je        ..B1.55       # Prob 50%                      #288.9 c9
                                # LOE rbx r8 r9 r10 r11 r14 r15 edx ecx esi edi r12d r13d
..B1.41:                        # Preds ..B1.37 ..B1.40 Latency 5
        lea       32(%rdx), %eax                                #288.9 c1
        cmpl      %eax, %ecx                                    #288.9 c5
        jl        ..B1.49       # Prob 50%                      #288.9 c5
                                # LOE rbx r8 r9 r10 r11 r14 r15 edx ecx esi edi r12d r13d
..B1.42:                        # Preds ..B1.41 Latency 13
        lea       (%rsi,%rdx), %eax                             # c1
        movl      %eax, (%rsp)                                  # c5
        lea       (%rdx,%rsi), %eax                             #291.12 c5
        lea       (%r9,%rax,4), %rax                            #291.12 c9
        testq     $63, %rax                                     #288.9 c13
        je        ..B1.46       # Prob 60%                      #288.9 c13
                                # LOE rbx r8 r9 r10 r11 r14 r15 edx ecx esi edi r12d r13d
..B1.43:                        # Preds ..B1.42 Latency 29
        lea       32(%rsi), %eax                                #288.9 c1
        vprefetch0 (%r14,%r15,4)                                #288.9 c1
        vprefetch0 (%r14,%rax,4)                                #288.9 c5
        movb      %dl, %dl                                      #288.9 c5
        vprefetch0 (%r11,%r15,4)                                #288.9 c9
        movb      %dl, %dl                                      #288.9 c9
        vprefetch0 (%r11,%rax,4)                                #288.9 c13
        movb      %dl, %dl                                      #288.9 c13
        vprefetch0 (%r9,%r15,4)                                 #288.9 c17
        movb      %dl, %dl                                      #290.39 c17
        movl      (%rsp), %r15d                                 #290.39 c21
        vprefetch0 (%r9,%rax,4)                                 #288.9 c21
        movl      %r15d, %r15d                                  #290.39
        vbroadcastss .L_2il0floatpacket.225(%rip), %zmm0        #290.39 c25
        movl      %r12d, 8(%rsp)                                #290.39 c29
                                # LOE rbx r8 r9 r10 r11 r14 r15 edx ecx esi edi r13d zmm0
..B1.44:                        # Preds ..B1.44 ..B1.43 Latency 257
        vloadunpackld (%r14,%r15,4), %zmm2                      #290.12 c1
        lea       16(%r15), %eax                                #290.12 c1
        vloadunpackld (%r11,%r15,4), %zmm1                      #290.26 c5
        addl      $32, %edx                                     #288.9 c5
        vloadunpackhd 64(%r14,%r15,4), %zmm2                    #290.12 c9
        lea       256(%r15), %r12d                              #290.12 c9
        vloadunpackhd 64(%r11,%r15,4), %zmm1                    #290.26 c13
        vprefetche1 (%r14,%r12,4)                               #290.12 c13
        vfmadd231ps %zmm0, %zmm1, %zmm2                         #290.12 c17
        nop                                                     #290.12 c21
        vpackstoreld %zmm2, (%r14,%r15,4)                       #290.12 c25
        vpackstorehd %zmm2, 64(%r14,%r15,4)                     #290.12 c29
        vloadunpackld (%r9,%r15,4), %zmm4                       #291.12 c33
        vloadunpackld (%r8,%r15,4), %zmm3                       #291.26 c37
        vloadunpackhd 64(%r9,%r15,4), %zmm4                     #291.12 c41
        vloadunpackhd 64(%r8,%r15,4), %zmm3                     #291.26 c45
        vfmadd231ps %zmm0, %zmm3, %zmm4                         #291.12 c49
        nop                                                     #291.12 c53
        vpackstoreld %zmm4, (%r9,%r15,4)                        #291.12 c57
        vpackstorehd %zmm4, 64(%r9,%r15,4)                      #291.12 c61
        vloadunpackld (%rbx,%r15,4), %zmm5                      #292.26 c65
        vloadunpackhd 64(%rbx,%r15,4), %zmm5                    #292.26 c69
        vfmadd213ps (%r10,%r15,4), %zmm0, %zmm5                 #292.12 c73
        nop                                                     #292.12 c77
        vmovaps   %zmm5, (%r10,%r15,4)                          #292.12 c81
        vloadunpackld (%r14,%rax,4), %zmm7                      #290.12 c85
        vloadunpackld (%r11,%rax,4), %zmm6                      #290.26 c89
        vloadunpackhd 64(%r14,%rax,4), %zmm7                    #290.12 c93
        vloadunpackhd 64(%r11,%rax,4), %zmm6                    #290.26 c97
        vfmadd231ps %zmm0, %zmm6, %zmm7                         #290.12 c101
        nop                                                     #290.12 c105
        vpackstoreld %zmm7, (%r14,%rax,4)                       #290.12 c109
        vpackstorehd %zmm7, 64(%r14,%rax,4)                     #290.12 c113
        vloadunpackld (%r9,%rax,4), %zmm9                       #291.12 c117
        vloadunpackld (%r8,%rax,4), %zmm8                       #291.26 c121
        vloadunpackhd 64(%r9,%rax,4), %zmm9                     #291.12 c125
        vloadunpackhd 64(%r8,%rax,4), %zmm8                     #291.26 c129
        vfmadd231ps %zmm0, %zmm8, %zmm9                         #291.12 c133
        nop                                                     #291.12 c137
        vpackstoreld %zmm9, (%r9,%rax,4)                        #291.12 c141
        vpackstorehd %zmm9, 64(%r9,%rax,4)                      #291.12 c145
        vloadunpackld (%rbx,%rax,4), %zmm10                     #292.26 c149
        vloadunpackhd 64(%rbx,%rax,4), %zmm10                   #292.26 c153
        vfmadd213ps (%r10,%rax,4), %zmm0, %zmm10                #292.12 c157
        nop                                                     #292.12 c161
        vmovaps   %zmm10, (%r10,%rax,4)                         #292.12 c165
        lea       64(%r15), %eax                                #290.12 c165
        vprefetch0 (%r14,%rax,4)                                #290.12 c169
        movb      %dl, %dl                                      #290.26 c169
        vprefetch1 (%r11,%r12,4)                                #290.26 c173
        movb      %dl, %dl                                      #290.26 c173
        vprefetch0 (%r11,%rax,4)                                #290.26 c177
        movb      %dl, %dl                                      #291.12 c177
        vprefetche1 (%r9,%r12,4)                                #291.12 c181
        movb      %dl, %dl                                      #291.12 c181
        vprefetch0 (%r9,%rax,4)                                 #291.12 c185
        movb      %dl, %dl                                      #291.26 c185
        vprefetch1 (%r8,%r12,4)                                 #291.26 c189
        movb      %dl, %dl                                      #291.26 c189
        vprefetch0 (%r8,%rax,4)                                 #291.26 c193
        movb      %dl, %dl                                      #292.12 c193
        vprefetche1 (%r10,%r12,4)                               #292.12 c197
        movb      %dl, %dl                                      #292.12 c197
        vprefetch0 (%r10,%rax,4)                                #292.12 c201
        movb      %dl, %dl                                      #292.26 c201
        vprefetch1 (%rbx,%r12,4)                                #292.26 c205
        lea       80(%r15), %r12d                               #290.12 c205
        vprefetch0 (%rbx,%rax,4)                                #292.26 c209
        lea       272(%r15), %eax                               #290.12 c209
        addl      $32, %r15d                                    #288.9 c213
        vprefetche1 (%r14,%rax,4)                               #290.12 c213
        movl      %r15d, %r15d                                  #288.9
        vprefetch0 (%r14,%r12,4)                                #290.12 c217
        movb      %dl, %dl                                      #290.26 c217
        vprefetch1 (%r11,%rax,4)                                #290.26 c221
        movb      %dl, %dl                                      #290.26 c221
        vprefetch0 (%r11,%r12,4)                                #290.26 c225
        movb      %bl, %bl                                      #291.12 c225
        vprefetche1 (%r9,%rax,4)                                #291.12 c229
        cmpl      %ecx, %edx                                    #288.9 c229
        vprefetch0 (%r9,%r12,4)                                 #291.12 c233
        movb      %dl, %dl                                      #291.26 c233
        vprefetch1 (%r8,%rax,4)                                 #291.26 c237
        movb      %dl, %dl                                      #291.26 c237
        vprefetch0 (%r8,%r12,4)                                 #291.26 c241
        movb      %dl, %dl                                      #292.12 c241
        vprefetche1 (%r10,%rax,4)                               #292.12 c245
        movb      %dl, %dl                                      #292.12 c245
        vprefetch0 (%r10,%r12,4)                                #292.12 c249
        movb      %dl, %dl                                      #292.26 c249
        vprefetch1 (%rbx,%rax,4)                                #292.26 c253
        movb      %dl, %dl                                      #292.26 c253
        vprefetch0 (%rbx,%r12,4)                                #292.26 c257
        jb        ..B1.44       # Prob 99%                      #288.9 c257
        jmp       ..B1.48       # Prob 100%                     #288.9 c257
                                # LOE rbx r8 r9 r10 r11 r14 r15 edx ecx esi edi r13d zmm0
..B1.46:                        # Preds ..B1.42 Latency 29
        lea       32(%rsi), %eax                                #288.9 c1
        vprefetch0 (%r14,%r15,4)                                #288.9 c1
        vprefetch0 (%r14,%rax,4)                                #288.9 c5
        movb      %dl, %dl                                      #288.9 c5
        vprefetch0 (%r11,%r15,4)                                #288.9 c9
        movb      %dl, %dl                                      #288.9 c9
        vprefetch0 (%r11,%rax,4)                                #288.9 c13
        movb      %dl, %dl                                      #288.9 c13
        vprefetch0 (%r9,%r15,4)                                 #288.9 c17
        movb      %dl, %dl                                      #290.39 c17
        movl      (%rsp), %r15d                                 #290.39 c21
        vprefetch0 (%r9,%rax,4)                                 #288.9 c21
        movl      %r15d, %r15d                                  #290.39
        vbroadcastss .L_2il0floatpacket.225(%rip), %zmm0        #290.39 c25
        movl      %r12d, 8(%rsp)                                #290.39 c29
                                # LOE rbx r8 r9 r10 r11 r14 r15 edx ecx esi edi r13d zmm0
..B1.47:                        # Preds ..B1.47 ..B1.46 Latency 233
        vloadunpackld (%r14,%r15,4), %zmm2                      #290.12 c1
        lea       16(%r15), %eax                                #290.12 c1
        vloadunpackld (%r11,%r15,4), %zmm1                      #290.26 c5
        addl      $32, %edx                                     #288.9 c5
        vloadunpackhd 64(%r14,%r15,4), %zmm2                    #290.12 c9
        lea       256(%r15), %r12d                              #290.12 c9
        vloadunpackhd 64(%r11,%r15,4), %zmm1                    #290.26 c13
        vprefetche1 (%r14,%r12,4)                               #290.12 c13
        vfmadd231ps %zmm0, %zmm1, %zmm2                         #290.12 c17
        nop                                                     #290.12 c21
        vpackstoreld %zmm2, (%r14,%r15,4)                       #290.12 c25
        vpackstorehd %zmm2, 64(%r14,%r15,4)                     #290.12 c29
        vloadunpackld (%r8,%r15,4), %zmm3                       #291.26 c33
        vloadunpackhd 64(%r8,%r15,4), %zmm3                     #291.26 c37
        vfmadd213ps (%r9,%r15,4), %zmm0, %zmm3                  #291.12 c41
        nop                                                     #291.12 c45
        vmovaps   %zmm3, (%r9,%r15,4)                           #291.12 c49
        vloadunpackld (%rbx,%r15,4), %zmm4                      #292.26 c53
        vloadunpackhd 64(%rbx,%r15,4), %zmm4                    #292.26 c57
        vfmadd213ps (%r10,%r15,4), %zmm0, %zmm4                 #292.12 c61
        nop                                                     #292.12 c65
        vmovaps   %zmm4, (%r10,%r15,4)                          #292.12 c69
        vloadunpackld (%r14,%rax,4), %zmm6                      #290.12 c73
        vloadunpackld (%r11,%rax,4), %zmm5                      #290.26 c77
        vloadunpackhd 64(%r14,%rax,4), %zmm6                    #290.12 c81
        vloadunpackhd 64(%r11,%rax,4), %zmm5                    #290.26 c85
        vfmadd231ps %zmm0, %zmm5, %zmm6                         #290.12 c89
        nop                                                     #290.12 c93
        vpackstoreld %zmm6, (%r14,%rax,4)                       #290.12 c97
        vpackstorehd %zmm6, 64(%r14,%rax,4)                     #290.12 c101
        vloadunpackld (%r8,%rax,4), %zmm7                       #291.26 c105
        vloadunpackhd 64(%r8,%rax,4), %zmm7                     #291.26 c109
        vfmadd213ps (%r9,%rax,4), %zmm0, %zmm7                  #291.12 c113
        nop                                                     #291.12 c117
        vmovaps   %zmm7, (%r9,%rax,4)                           #291.12 c121
        vloadunpackld (%rbx,%rax,4), %zmm8                      #292.26 c125
        vloadunpackhd 64(%rbx,%rax,4), %zmm8                    #292.26 c129
        vfmadd213ps (%r10,%rax,4), %zmm0, %zmm8                 #292.12 c133
        nop                                                     #292.12 c137
        vmovaps   %zmm8, (%r10,%rax,4)                          #292.12 c141
        lea       64(%r15), %eax                                #290.12 c141
        vprefetch0 (%r14,%rax,4)                                #290.12 c145
        movb      %dl, %dl                                      #290.26 c145
        vprefetch1 (%r11,%r12,4)                                #290.26 c149
        movb      %dl, %dl                                      #290.26 c149
        vprefetch0 (%r11,%rax,4)                                #290.26 c153
        movb      %dl, %dl                                      #291.12 c153
        vprefetche1 (%r9,%r12,4)                                #291.12 c157
        movb      %dl, %dl                                      #291.12 c157
        vprefetch0 (%r9,%rax,4)                                 #291.12 c161
        movb      %dl, %dl                                      #291.26 c161
        vprefetch1 (%r8,%r12,4)                                 #291.26 c165
        movb      %dl, %dl                                      #291.26 c165
        vprefetch0 (%r8,%rax,4)                                 #291.26 c169
        movb      %dl, %dl                                      #292.12 c169
        vprefetche1 (%r10,%r12,4)                               #292.12 c173
        movb      %dl, %dl                                      #292.12 c173
        vprefetch0 (%r10,%rax,4)                                #292.12 c177
        movb      %dl, %dl                                      #292.26 c177
        vprefetch1 (%rbx,%r12,4)                                #292.26 c181
        lea       80(%r15), %r12d                               #290.12 c181
        vprefetch0 (%rbx,%rax,4)                                #292.26 c185
        lea       272(%r15), %eax                               #290.12 c185
        addl      $32, %r15d                                    #288.9 c189
        vprefetche1 (%r14,%rax,4)                               #290.12 c189
        movl      %r15d, %r15d                                  #288.9
        vprefetch0 (%r14,%r12,4)                                #290.12 c193
        movb      %dl, %dl                                      #290.26 c193
        vprefetch1 (%r11,%rax,4)                                #290.26 c197
        movb      %dl, %dl                                      #290.26 c197
        vprefetch0 (%r11,%r12,4)                                #290.26 c201
        movb      %bl, %bl                                      #291.12 c201
        vprefetche1 (%r9,%rax,4)                                #291.12 c205
        cmpl      %ecx, %edx                                    #288.9 c205
        vprefetch0 (%r9,%r12,4)                                 #291.12 c209
        movb      %dl, %dl                                      #291.26 c209
        vprefetch1 (%r8,%rax,4)                                 #291.26 c213
        movb      %dl, %dl                                      #291.26 c213
        vprefetch0 (%r8,%r12,4)                                 #291.26 c217
        movb      %dl, %dl                                      #292.12 c217
        vprefetche1 (%r10,%rax,4)                               #292.12 c221
        movb      %dl, %dl                                      #292.12 c221
        vprefetch0 (%r10,%r12,4)                                #292.12 c225
        movb      %dl, %dl                                      #292.26 c225
        vprefetch1 (%rbx,%rax,4)                                #292.26 c229
        movb      %dl, %dl                                      #292.26 c229
        vprefetch0 (%rbx,%r12,4)                                #292.26 c233
        jb        ..B1.47       # Prob 99%                      #288.9 c233
                                # LOE rbx r8 r9 r10 r11 r14 r15 edx ecx esi edi r13d zmm0
..B1.48:                        # Preds ..B1.44 ..B1.47 Latency 1
        movl      8(%rsp), %r12d                                # c1
                                # LOE rbx r8 r9 r10 r11 r14 ecx esi edi r12d r13d
..B1.49:                        # Preds ..B1.41 ..B1.48 Latency 5
        lea       1(%rcx), %eax                                 #288.9 c1
        cmpl      %eax, %edi                                    #288.9 c5
        jb        ..B1.55       # Prob 50%                      #288.9 c5
                                # LOE rbx r8 r9 r10 r11 r14 ecx esi edi r12d r13d
..B1.50:                        # Preds ..B1.49 Latency 25
        subl      %ecx, %edi                                    #288.9 c1
        addl      %ecx, %esi                                    #290.12 c1
        movl      %edi, 40(%rsp)                                #288.9 c5
        vpbroadcastd .L_2il0floatpacket.223(%rip), %zmm4        #288.9 c9
        vmovaps   .L_2il0floatpacket.224(%rip), %zmm3           #288.9 c13
        vpxord    %zmm2, %zmm2, %zmm2                           #290.12 c17
        vbroadcastss .L_2il0floatpacket.225(%rip), %zmm1        #290.39 c21
        vpbroadcastd 40(%rsp), %zmm0                            #288.9 c25
                                # LOE rbx r8 r9 r10 r11 r14 esi edi r12d r13d zmm0 zmm1 zmm2 zmm3 zmm4
..B1.51:                        # Preds ..B1.53 ..B1.50 Latency 17
        vpcmpud   $6, %zmm0, %zmm3, %k1                         #288.9 c1
        movl      %esi, %eax                                    #290.12 c1
        nop                                                     #288.9 c5
        knot      %k1, %k1                                      #288.9 c9
        knot      %k1, %k0                                      #288.9 c13
        jknzd     ..B1.141, %k0 # Prob 9%                       #288.9 c17
                                # LOE rax rbx r8 r9 r10 r11 r14 esi edi r12d r13d zmm0 zmm1 zmm2 zmm3 zmm4 k1
..B1.52:                        # Preds ..B1.51 Latency 81
        vloadunpackld (%r14,%rax,4), %zmm6                      #290.12 c1
        vloadunpackld (%r11,%rax,4), %zmm5                      #290.26 c5
        vloadunpackhd 64(%r14,%rax,4), %zmm6                    #290.12 c9
        vloadunpackhd 64(%r11,%rax,4), %zmm5                    #290.26 c13
        vfmadd231ps %zmm1, %zmm5, %zmm6                         #290.12 c17
        nop                                                     #290.12 c21
        vpackstoreld %zmm6, (%r14,%rax,4)                       #290.12 c25
        vpackstorehd %zmm6, 64(%r14,%rax,4)                     #290.12 c29
        vloadunpackld (%r9,%rax,4), %zmm8                       #291.12 c33
        vloadunpackld (%r8,%rax,4), %zmm7                       #291.26 c37
        vloadunpackhd 64(%r9,%rax,4), %zmm8                     #291.12 c41
        vloadunpackhd 64(%r8,%rax,4), %zmm7                     #291.26 c45
        vfmadd231ps %zmm1, %zmm7, %zmm8                         #291.12 c49
        nop                                                     #291.12 c53
        vpackstoreld %zmm8, (%r9,%rax,4)                        #291.12 c57
        vpackstorehd %zmm8, 64(%r9,%rax,4)                      #291.12 c61
        vloadunpackld (%rbx,%rax,4), %zmm9                      #292.26 c65
        vloadunpackhd 64(%rbx,%rax,4), %zmm9                    #292.26 c69
        vfmadd213ps (%r10,%rax,4), %zmm1, %zmm9                 #292.12 c73
        nop                                                     #292.12 c77
        vmovaps   %zmm9, (%r10,%rax,4)                          #292.12 c81
                                # LOE rbx r8 r9 r10 r11 r14 esi edi r12d r13d zmm0 zmm1 zmm2 zmm3 zmm4
..B1.53:                        # Preds ..B1.141 ..B1.52 Latency 9
        addl      $16, %r13d                                    #288.9 c1
        addl      $16, %esi                                     #288.9 c1
        vpaddd    %zmm4, %zmm3, %zmm3                           #288.9 c5
        cmpl      %edi, %r13d                                   #288.9 c5
        jb        ..B1.51       # Prob 99%                      #288.9 c9
                                # LOE rbx r8 r9 r10 r11 r14 esi edi r12d r13d zmm0 zmm1 zmm2 zmm3 zmm4
..B1.55:                        # Preds ..B1.53 ..B1.33 ..B1.34 ..B1.40 ..B1.49
                                #       Latency 9
        lea       .2.5_2_kmpc_loc_struct_pack.153(%rip), %rdi   #285.9 c1
        movl      %r12d, %esi                                   #285.9 c1
        xorl      %eax, %eax                                    #285.9 c5
..___tag_value__Z18particles_simulate14t_particles_DA.100:      #285.9
        call      __kmpc_for_static_fini@PLT                    #285.9
..___tag_value__Z18particles_simulate14t_particles_DA.101:      #
                                # LOE
..B1.56:                        # Preds ..B1.55 Latency 13
        movq      48(%rsp), %r15                                #285.9 c1
..___tag_value__Z18particles_simulate14t_particles_DA.102:      #
        movq      56(%rsp), %r14                                #285.9 c1
..___tag_value__Z18particles_simulate14t_particles_DA.103:      #
        movq      64(%rsp), %r13                                #285.9 c5
..___tag_value__Z18particles_simulate14t_particles_DA.104:      #
        movq      72(%rsp), %r12                                #285.9 c5
..___tag_value__Z18particles_simulate14t_particles_DA.105:      #
        movq      80(%rsp), %rbx                                #285.9 c9
..___tag_value__Z18particles_simulate14t_particles_DA.106:      #
        movq      %rbp, %rsp                                    #285.9 c13
        popq      %rbp                                          #285.9
..___tag_value__Z18particles_simulate14t_particles_DA.107:      #
        ret                                                     #285.9
..___tag_value__Z18particles_simulate14t_particles_DA.109:      #
                                # LOE
L__Z18particles_simulate14t_particles_DA_273__par_loop3_2.126:
# parameter 1: %rdi
# parameter 2: %rsi
# parameter 3: %rdx
# parameter 4: %rcx
# parameter 5: %r8
# parameter 6: %r9
# parameter 7: 16 + %rbp
# parameter 8: 24 + %rbp
# parameter 9: 32 + %rbp
..B1.57:                        # Preds ..B1.0 Latency 61
        pushq     %rbp                                          #273.9
..___tag_value__Z18particles_simulate14t_particles_DA.111:      #
        movq      %rsp, %rbp                                    #273.9
..___tag_value__Z18particles_simulate14t_particles_DA.112:      #
        andq      $-64, %rsp                                    #273.9
        subq      $128, %rsp                                    #273.9 c1
        movl      $1, %r11d                                     #273.9 c1
        movq      %r13, 64(%rsp)                                #273.9 c5
..___tag_value__Z18particles_simulate14t_particles_DA.114:      #
        xorl      %r13d, %r13d                                  #273.9 c5
        movq      %rbx, 80(%rsp)                                #273.9 c9
..___tag_value__Z18particles_simulate14t_particles_DA.115:      #
        movq      %rdx, %rbx                                    #273.9 c9
        movq      %r15, 48(%rsp)                                #273.9 c13
        movl      $34, %edx                                     #273.9 c13
        movq      %r14, 56(%rsp)                                #273.9 c17
        xorl      %eax, %eax                                    #273.9 c17
        movq      %r12, 72(%rsp)                                #273.9 c21
..___tag_value__Z18particles_simulate14t_particles_DA.116:      #
        movl      (%rdi), %r12d                                 #273.9 c21
        movl      $1105919, 20(%rsp)                            #273.9 c25
        movl      %r13d, 16(%rsp)                               #273.9 c29
        lea       .2.5_2_kmpc_loc_struct_pack.128(%rip), %rdi   #273.9 c29
        movl      %r13d, 24(%rsp)                               #273.9 c33
        movl      %r12d, %esi                                   #273.9 c33
        movl      %r11d, 28(%rsp)                               #273.9 c37
        addq      $-32, %rsp                                    #273.9 c37
        lea       60(%rsp), %r10                                #273.9 c41
        lea       56(%rsp), %rcx                                #273.9 c41
        lea       48(%rsp), %r8                                 #273.9 c45
        lea       52(%rsp), %r9                                 #273.9 c45
        movq      %r10, (%rsp)                                  #273.9 c49
        movl      %r11d, 8(%rsp)                                #273.9 c53
        movl      %r11d, 16(%rsp)                               #273.9 c57
..___tag_value__Z18particles_simulate14t_particles_DA.119:      #273.9
        call      __kmpc_for_static_init_4u@PLT                 #273.9
..___tag_value__Z18particles_simulate14t_particles_DA.120:      #
                                # LOE rbx r12d r13d
..B1.163:                       # Preds ..B1.57 Latency 1
        addq      $32, %rsp                                     #273.9 c1
                                # LOE rbx r12d r13d
..B1.58:                        # Preds ..B1.163 Latency 9
        movl      16(%rsp), %esi                                #273.9 c1
        movl      20(%rsp), %edi                                #273.9 c1
        cmpl      $1105919, 16(%rsp)                            #273.9 c5
        ja        ..B1.80       # Prob 50%                      #273.9 c9
                                # LOE rbx esi edi r12d r13d
..B1.59:                        # Preds ..B1.58 Latency 9
        cmpl      $1105919, %edi                                #273.9 c1
        jb        ..L121        # Prob 50%                      #273.9 c5
        movl      $1105919, %edi                                #273.9
..L121:                                                         #
        cmpl      %esi, %edi                                    #276.33 c9
        jb        ..B1.80       # Prob 50%                      #276.33 c9
                                # LOE rbx esi edi r12d r13d
..B1.60:                        # Preds ..B1.59 Latency 25
        movq      40(%rbx), %r10                                #280.13 c1
        movl      %esi, %r15d                                   #280.13 c1
        lea       (%r10,%r15,4), %rdx                           #280.13 c5
        subl      %esi, %edi                                    #276.9 c5
        andq      $63, %rdx                                     #276.9 c9
        incl      %edi                                          #276.9 c9
        movq      24(%rbx), %r14                                #278.13 c13
        movq      80(%rbx), %r11                                #278.32 c13
        movq      32(%rbx), %r9                                 #279.13 c17
        movq      88(%rbx), %r8                                 #279.32 c17
        movq      96(%rbx), %rbx                                #280.32 c21
        testl     %edx, %edx                                    #276.9 c21
        je        ..B1.62       # Prob 50%                      #276.9 c25
                                # LOE rbx r8 r9 r10 r11 r14 r15 edx esi edi r12d r13d
..B1.61:                        # Preds ..B1.60 Latency 17
        negl      %edx                                          #276.9 c1
        addl      $64, %edx                                     #276.9 c5
        shrl      $2, %edx                                      #276.9 c9
        cmpl      %edx, %edi                                    #276.9 c13
        jge       ..L122        # Prob 50%                      #276.9 c17
        movl      %edi, %edx                                    #276.9
..L122:                                                         #
                                # LOE rbx r8 r9 r10 r11 r14 r15 edx esi edi r12d r13d
..B1.62:                        # Preds ..B1.61 ..B1.60 Latency 21
        movl      %edi, %ecx                                    #276.9 c1
        subl      %edx, %ecx                                    #276.9 c5
        andl      $31, %ecx                                     #276.9 c9
        negl      %ecx                                          #276.9 c13
        addl      %edi, %ecx                                    #276.9 c17
        cmpl      $1, %edx                                      #276.9 c21
        jb        ..B1.66       # Prob 50%                      #276.9 c21
                                # LOE rbx r8 r9 r10 r11 r14 r15 edx ecx esi edi r12d r13d
..B1.63:                        # Preds ..B1.62 Latency 25
        movl      %edx, 40(%rsp)                                #276.9 c1
        movl      %r13d, %eax                                   #276.9 c1
        vpbroadcastd .L_2il0floatpacket.223(%rip), %zmm4        #276.9 c5
        vmovaps   .L_2il0floatpacket.224(%rip), %zmm3           #276.9 c9
        vbroadcastss .L_2il0floatpacket.225(%rip), %zmm2        #278.27 c13
        vpbroadcastd 40(%rsp), %zmm1                            #276.9 c17
        movq      %r15, 8(%rsp)                                 #276.9 c17
        movl      %r12d, (%rsp)                                 #276.9 c21
        vmovaps   .L_2il0floatpacket.226(%rip), %zmm0           #276.9 c25
                                # LOE rbx r8 r9 r10 r11 r14 eax edx ecx esi edi zmm0 zmm1 zmm2 zmm3 zmm4
..B1.64:                        # Preds ..B1.64 ..B1.63 Latency 133
        vpcmpud   $6, %zmm1, %zmm3, %k0                         #276.9 c1
        lea       (%rsi,%rax), %r12d                            #278.13 c1
        vpxord    %zmm6, %zmm6, %zmm6                           #278.13 c5
        lea       (%r14,%r12,4), %r15                           #278.13 c5
        vpxord    %zmm5, %zmm5, %zmm5                           #278.32 c9
        lea       (%r11,%r12,4), %r13                           #278.32 c9
        vpxord    %zmm8, %zmm8, %zmm8                           #279.13 c13
        knot      %k0, %k1                                      #276.9 c13
        vpxord    %zmm7, %zmm7, %zmm7                           #279.32 c17
        kmov      %k1, %k2                                      #278.13 c17
..L124:                                                         #278.13
        vgatherdps (%r15,%zmm0,4), %zmm6{%k2}                   #278.13
        jkzd      ..L123, %k2   # Prob 50%                      #278.13
        vgatherdps (%r15,%zmm0,4), %zmm6{%k2}                   #278.13
        jknzd     ..L124, %k2   # Prob 50%                      #278.13
..L123:                                                         #
        vpxord    %zmm10, %zmm10, %zmm10                        #280.13 c29
        kmov      %k1, %k3                                      #278.32 c29
..L126:                                                         #278.32
        vgatherdps (%r13,%zmm0,4), %zmm5{%k3}                   #278.32
        jkzd      ..L125, %k3   # Prob 50%                      #278.32
        vgatherdps (%r13,%zmm0,4), %zmm5{%k3}                   #278.32
        jknzd     ..L126, %k3   # Prob 50%                      #278.32
..L125:                                                         #
        vfmadd231ps %zmm2, %zmm5, %zmm6                         #278.13 c41
        kmov      %k1, %k4                                      #278.13 c41
        vpxord    %zmm9, %zmm9, %zmm9                           #280.32 c45
        lea       (%r8,%r12,4), %r13                            #279.32 c45
..L128:                                                         #278.13
        vscatterdps %zmm6, (%r15,%zmm0,4){%k4}                  #278.13
        jkzd      ..L127, %k4   # Prob 50%                      #278.13
        vscatterdps %zmm6, (%r15,%zmm0,4){%k4}                  #278.13
        jknzd     ..L128, %k4   # Prob 50%                      #278.13
..L127:                                                         #
        kmov      %k1, %k5                                      #279.13 c57
        kmov      %k1, %k6                                      #279.32 c57
..L130:                                                         #279.32
        vgatherdps (%r13,%zmm0,4), %zmm7{%k6}                   #279.32
        jkzd      ..L129, %k6   # Prob 50%                      #279.32
        vgatherdps (%r13,%zmm0,4), %zmm7{%k6}                   #279.32
        jknzd     ..L130, %k6   # Prob 50%                      #279.32
..L129:                                                         #
        lea       (%r9,%r12,4), %r15                            #279.13 c69
        kmov      %k1, %k7                                      #279.13 c69
..L132:                                                         #279.13
        vgatherdps (%r15,%zmm0,4), %zmm8{%k5}                   #279.13
        jkzd      ..L131, %k5   # Prob 50%                      #279.13
        vgatherdps (%r15,%zmm0,4), %zmm8{%k5}                   #279.13
        jknzd     ..L132, %k5   # Prob 50%                      #279.13
..L131:                                                         #
        lea       (%r10,%r12,4), %r13                           #280.13 c81
        lea       (%rbx,%r12,4), %r12                           #280.32 c81
        vfmadd231ps %zmm2, %zmm7, %zmm8                         #279.13 c85
        kmov      %k1, %k2                                      #280.13 c85
        kmov      %k1, %k3                                      #280.32 c89
        addl      $16, %eax                                     #276.9 c89
..L134:                                                         #279.13
        vscatterdps %zmm8, (%r15,%zmm0,4){%k7}                  #279.13
        jkzd      ..L133, %k7   # Prob 50%                      #279.13
        vscatterdps %zmm8, (%r15,%zmm0,4){%k7}                  #279.13
        jknzd     ..L134, %k7   # Prob 50%                      #279.13
..L133:                                                         #
..L136:                                                         #280.13
        vgatherdps (%r13,%zmm0,4), %zmm10{%k2}                  #280.13
        jkzd      ..L135, %k2   # Prob 50%                      #280.13
        vgatherdps (%r13,%zmm0,4), %zmm10{%k2}                  #280.13
        jknzd     ..L136, %k2   # Prob 50%                      #280.13
..L135:                                                         #
..L138:                                                         #280.32
        vgatherdps (%r12,%zmm0,4), %zmm9{%k3}                   #280.32
        jkzd      ..L137, %k3   # Prob 50%                      #280.32
        vgatherdps (%r12,%zmm0,4), %zmm9{%k3}                   #280.32
        jknzd     ..L138, %k3   # Prob 50%                      #280.32
..L137:                                                         #
        vfmadd231ps %zmm2, %zmm9, %zmm10                        #280.13 c117
        vpaddd    %zmm4, %zmm3, %zmm3                           #280.13 c121
..L140:                                                         #280.13
        vscatterdps %zmm10, (%r13,%zmm0,4){%k1}                 #280.13
        jkzd      ..L139, %k1   # Prob 50%                      #280.13
        vscatterdps %zmm10, (%r13,%zmm0,4){%k1}                 #280.13
        jknzd     ..L140, %k1   # Prob 50%                      #280.13
..L139:                                                         #
        cmpl      %edx, %eax                                    #276.9 c133
        jb        ..B1.64       # Prob 99%                      #276.9 c133
                                # LOE rbx r8 r9 r10 r11 r14 eax edx ecx esi edi zmm0 zmm1 zmm2 zmm3 zmm4
..B1.65:                        # Preds ..B1.64 Latency 9
        movq      8(%rsp), %r15                                 # c1
        xorl      %r13d, %r13d                                  # c1
        movl      (%rsp), %r12d                                 # c5
        cmpl      %edx, %edi                                    #276.9 c5
        je        ..B1.80       # Prob 50%                      #276.9 c9
                                # LOE rbx r8 r9 r10 r11 r14 r15 edx ecx esi edi r12d r13d
..B1.66:                        # Preds ..B1.62 ..B1.65 Latency 5
        lea       32(%rdx), %eax                                #276.9 c1
        cmpl      %eax, %ecx                                    #276.9 c5
        jl        ..B1.74       # Prob 50%                      #276.9 c5
                                # LOE rbx r8 r9 r10 r11 r14 r15 edx ecx esi edi r12d r13d
..B1.67:                        # Preds ..B1.66 Latency 13
        lea       (%rsi,%rdx), %eax                             # c1
        movl      %eax, 8(%rsp)                                 # c5
        lea       (%rdx,%rsi), %eax                             #279.13 c5
        lea       (%r9,%rax,4), %rax                            #279.13 c9
        testq     $63, %rax                                     #276.9 c13
        je        ..B1.71       # Prob 60%                      #276.9 c13
                                # LOE rbx r8 r9 r10 r11 r14 r15 edx ecx esi edi r12d r13d
..B1.68:                        # Preds ..B1.67 Latency 29
        lea       32(%rsi), %eax                                #276.9 c1
        vprefetch0 (%r14,%r15,4)                                #276.9 c1
        vprefetch0 (%r14,%rax,4)                                #276.9 c5
        movb      %dl, %dl                                      #276.9 c5
        vprefetch0 (%r11,%r15,4)                                #276.9 c9
        movb      %dl, %dl                                      #276.9 c9
        vprefetch0 (%r11,%rax,4)                                #276.9 c13
        movb      %dl, %dl                                      #276.9 c13
        vprefetch0 (%r9,%r15,4)                                 #276.9 c17
        movb      %dl, %dl                                      #278.27 c17
        movl      8(%rsp), %r15d                                #278.27 c21
        vprefetch0 (%r9,%rax,4)                                 #276.9 c21
        movl      %r15d, %r15d                                  #278.27
        vbroadcastss .L_2il0floatpacket.225(%rip), %zmm0        #278.27 c25
        movl      %r12d, (%rsp)                                 #278.27 c29
                                # LOE rbx r8 r9 r10 r11 r14 r15 edx ecx esi edi r13d zmm0
..B1.69:                        # Preds ..B1.69 ..B1.68 Latency 257
        vloadunpackld (%r14,%r15,4), %zmm2                      #278.13 c1
        lea       16(%r15), %eax                                #278.13 c1
        vloadunpackld (%r11,%r15,4), %zmm1                      #278.32 c5
        addl      $32, %edx                                     #276.9 c5
        vloadunpackhd 64(%r14,%r15,4), %zmm2                    #278.13 c9
        lea       256(%r15), %r12d                              #278.13 c9
        vloadunpackhd 64(%r11,%r15,4), %zmm1                    #278.32 c13
        vprefetche1 (%r14,%r12,4)                               #278.13 c13
        vfmadd231ps %zmm0, %zmm1, %zmm2                         #278.13 c17
        nop                                                     #278.13 c21
        vpackstoreld %zmm2, (%r14,%r15,4)                       #278.13 c25
        vpackstorehd %zmm2, 64(%r14,%r15,4)                     #278.13 c29
        vloadunpackld (%r9,%r15,4), %zmm4                       #279.13 c33
        vloadunpackld (%r8,%r15,4), %zmm3                       #279.32 c37
        vloadunpackhd 64(%r9,%r15,4), %zmm4                     #279.13 c41
        vloadunpackhd 64(%r8,%r15,4), %zmm3                     #279.32 c45
        vfmadd231ps %zmm0, %zmm3, %zmm4                         #279.13 c49
        nop                                                     #279.13 c53
        vpackstoreld %zmm4, (%r9,%r15,4)                        #279.13 c57
        vpackstorehd %zmm4, 64(%r9,%r15,4)                      #279.13 c61
        vloadunpackld (%rbx,%r15,4), %zmm5                      #280.32 c65
        vloadunpackhd 64(%rbx,%r15,4), %zmm5                    #280.32 c69
        vfmadd213ps (%r10,%r15,4), %zmm0, %zmm5                 #280.13 c73
        nop                                                     #280.13 c77
        vmovaps   %zmm5, (%r10,%r15,4)                          #280.13 c81
        vloadunpackld (%r14,%rax,4), %zmm7                      #278.13 c85
        vloadunpackld (%r11,%rax,4), %zmm6                      #278.32 c89
        vloadunpackhd 64(%r14,%rax,4), %zmm7                    #278.13 c93
        vloadunpackhd 64(%r11,%rax,4), %zmm6                    #278.32 c97
        vfmadd231ps %zmm0, %zmm6, %zmm7                         #278.13 c101
        nop                                                     #278.13 c105
        vpackstoreld %zmm7, (%r14,%rax,4)                       #278.13 c109
        vpackstorehd %zmm7, 64(%r14,%rax,4)                     #278.13 c113
        vloadunpackld (%r9,%rax,4), %zmm9                       #279.13 c117
        vloadunpackld (%r8,%rax,4), %zmm8                       #279.32 c121
        vloadunpackhd 64(%r9,%rax,4), %zmm9                     #279.13 c125
        vloadunpackhd 64(%r8,%rax,4), %zmm8                     #279.32 c129
        vfmadd231ps %zmm0, %zmm8, %zmm9                         #279.13 c133
        nop                                                     #279.13 c137
        vpackstoreld %zmm9, (%r9,%rax,4)                        #279.13 c141
        vpackstorehd %zmm9, 64(%r9,%rax,4)                      #279.13 c145
        vloadunpackld (%rbx,%rax,4), %zmm10                     #280.32 c149
        vloadunpackhd 64(%rbx,%rax,4), %zmm10                   #280.32 c153
        vfmadd213ps (%r10,%rax,4), %zmm0, %zmm10                #280.13 c157
        nop                                                     #280.13 c161
        vmovaps   %zmm10, (%r10,%rax,4)                         #280.13 c165
        lea       64(%r15), %eax                                #278.13 c165
        vprefetch0 (%r14,%rax,4)                                #278.13 c169
        movb      %dl, %dl                                      #278.32 c169
        vprefetch1 (%r11,%r12,4)                                #278.32 c173
        movb      %dl, %dl                                      #278.32 c173
        vprefetch0 (%r11,%rax,4)                                #278.32 c177
        movb      %dl, %dl                                      #279.13 c177
        vprefetche1 (%r9,%r12,4)                                #279.13 c181
        movb      %dl, %dl                                      #279.13 c181
        vprefetch0 (%r9,%rax,4)                                 #279.13 c185
        movb      %dl, %dl                                      #279.32 c185
        vprefetch1 (%r8,%r12,4)                                 #279.32 c189
        movb      %dl, %dl                                      #279.32 c189
        vprefetch0 (%r8,%rax,4)                                 #279.32 c193
        movb      %dl, %dl                                      #280.13 c193
        vprefetche1 (%r10,%r12,4)                               #280.13 c197
        movb      %dl, %dl                                      #280.13 c197
        vprefetch0 (%r10,%rax,4)                                #280.13 c201
        movb      %dl, %dl                                      #280.32 c201
        vprefetch1 (%rbx,%r12,4)                                #280.32 c205
        lea       80(%r15), %r12d                               #278.13 c205
        vprefetch0 (%rbx,%rax,4)                                #280.32 c209
        lea       272(%r15), %eax                               #278.13 c209
        addl      $32, %r15d                                    #276.9 c213
        vprefetche1 (%r14,%rax,4)                               #278.13 c213
        movl      %r15d, %r15d                                  #276.9
        vprefetch0 (%r14,%r12,4)                                #278.13 c217
        movb      %dl, %dl                                      #278.32 c217
        vprefetch1 (%r11,%rax,4)                                #278.32 c221
        movb      %dl, %dl                                      #278.32 c221
        vprefetch0 (%r11,%r12,4)                                #278.32 c225
        movb      %bl, %bl                                      #279.13 c225
        vprefetche1 (%r9,%rax,4)                                #279.13 c229
        cmpl      %ecx, %edx                                    #276.9 c229
        vprefetch0 (%r9,%r12,4)                                 #279.13 c233
        movb      %dl, %dl                                      #279.32 c233
        vprefetch1 (%r8,%rax,4)                                 #279.32 c237
        movb      %dl, %dl                                      #279.32 c237
        vprefetch0 (%r8,%r12,4)                                 #279.32 c241
        movb      %dl, %dl                                      #280.13 c241
        vprefetche1 (%r10,%rax,4)                               #280.13 c245
        movb      %dl, %dl                                      #280.13 c245
        vprefetch0 (%r10,%r12,4)                                #280.13 c249
        movb      %dl, %dl                                      #280.32 c249
        vprefetch1 (%rbx,%rax,4)                                #280.32 c253
        movb      %dl, %dl                                      #280.32 c253
        vprefetch0 (%rbx,%r12,4)                                #280.32 c257
        jb        ..B1.69       # Prob 99%                      #276.9 c257
        jmp       ..B1.73       # Prob 100%                     #276.9 c257
                                # LOE rbx r8 r9 r10 r11 r14 r15 edx ecx esi edi r13d zmm0
..B1.71:                        # Preds ..B1.67 Latency 29
        lea       32(%rsi), %eax                                #276.9 c1
        vprefetch0 (%r14,%r15,4)                                #276.9 c1
        vprefetch0 (%r14,%rax,4)                                #276.9 c5
        movb      %dl, %dl                                      #276.9 c5
        vprefetch0 (%r11,%r15,4)                                #276.9 c9
        movb      %dl, %dl                                      #276.9 c9
        vprefetch0 (%r11,%rax,4)                                #276.9 c13
        movb      %dl, %dl                                      #276.9 c13
        vprefetch0 (%r9,%r15,4)                                 #276.9 c17
        movb      %dl, %dl                                      #278.27 c17
        movl      8(%rsp), %r15d                                #278.27 c21
        vprefetch0 (%r9,%rax,4)                                 #276.9 c21
        movl      %r15d, %r15d                                  #278.27
        vbroadcastss .L_2il0floatpacket.225(%rip), %zmm0        #278.27 c25
        movl      %r12d, (%rsp)                                 #278.27 c29
                                # LOE rbx r8 r9 r10 r11 r14 r15 edx ecx esi edi r13d zmm0
..B1.72:                        # Preds ..B1.72 ..B1.71 Latency 233
        vloadunpackld (%r14,%r15,4), %zmm2                      #278.13 c1
        lea       16(%r15), %eax                                #278.13 c1
        vloadunpackld (%r11,%r15,4), %zmm1                      #278.32 c5
        addl      $32, %edx                                     #276.9 c5
        vloadunpackhd 64(%r14,%r15,4), %zmm2                    #278.13 c9
        lea       256(%r15), %r12d                              #278.13 c9
        vloadunpackhd 64(%r11,%r15,4), %zmm1                    #278.32 c13
        vprefetche1 (%r14,%r12,4)                               #278.13 c13
        vfmadd231ps %zmm0, %zmm1, %zmm2                         #278.13 c17
        nop                                                     #278.13 c21
        vpackstoreld %zmm2, (%r14,%r15,4)                       #278.13 c25
        vpackstorehd %zmm2, 64(%r14,%r15,4)                     #278.13 c29
        vloadunpackld (%r8,%r15,4), %zmm3                       #279.32 c33
        vloadunpackhd 64(%r8,%r15,4), %zmm3                     #279.32 c37
        vfmadd213ps (%r9,%r15,4), %zmm0, %zmm3                  #279.13 c41
        nop                                                     #279.13 c45
        vmovaps   %zmm3, (%r9,%r15,4)                           #279.13 c49
        vloadunpackld (%rbx,%r15,4), %zmm4                      #280.32 c53
        vloadunpackhd 64(%rbx,%r15,4), %zmm4                    #280.32 c57
        vfmadd213ps (%r10,%r15,4), %zmm0, %zmm4                 #280.13 c61
        nop                                                     #280.13 c65
        vmovaps   %zmm4, (%r10,%r15,4)                          #280.13 c69
        vloadunpackld (%r14,%rax,4), %zmm6                      #278.13 c73
        vloadunpackld (%r11,%rax,4), %zmm5                      #278.32 c77
        vloadunpackhd 64(%r14,%rax,4), %zmm6                    #278.13 c81
        vloadunpackhd 64(%r11,%rax,4), %zmm5                    #278.32 c85
        vfmadd231ps %zmm0, %zmm5, %zmm6                         #278.13 c89
        nop                                                     #278.13 c93
        vpackstoreld %zmm6, (%r14,%rax,4)                       #278.13 c97
        vpackstorehd %zmm6, 64(%r14,%rax,4)                     #278.13 c101
        vloadunpackld (%r8,%rax,4), %zmm7                       #279.32 c105
        vloadunpackhd 64(%r8,%rax,4), %zmm7                     #279.32 c109
        vfmadd213ps (%r9,%rax,4), %zmm0, %zmm7                  #279.13 c113
        nop                                                     #279.13 c117
        vmovaps   %zmm7, (%r9,%rax,4)                           #279.13 c121
        vloadunpackld (%rbx,%rax,4), %zmm8                      #280.32 c125
        vloadunpackhd 64(%rbx,%rax,4), %zmm8                    #280.32 c129
        vfmadd213ps (%r10,%rax,4), %zmm0, %zmm8                 #280.13 c133
        nop                                                     #280.13 c137
        vmovaps   %zmm8, (%r10,%rax,4)                          #280.13 c141
        lea       64(%r15), %eax                                #278.13 c141
        vprefetch0 (%r14,%rax,4)                                #278.13 c145
        movb      %dl, %dl                                      #278.32 c145
        vprefetch1 (%r11,%r12,4)                                #278.32 c149
        movb      %dl, %dl                                      #278.32 c149
        vprefetch0 (%r11,%rax,4)                                #278.32 c153
        movb      %dl, %dl                                      #279.13 c153
        vprefetche1 (%r9,%r12,4)                                #279.13 c157
        movb      %dl, %dl                                      #279.13 c157
        vprefetch0 (%r9,%rax,4)                                 #279.13 c161
        movb      %dl, %dl                                      #279.32 c161
        vprefetch1 (%r8,%r12,4)                                 #279.32 c165
        movb      %dl, %dl                                      #279.32 c165
        vprefetch0 (%r8,%rax,4)                                 #279.32 c169
        movb      %dl, %dl                                      #280.13 c169
        vprefetche1 (%r10,%r12,4)                               #280.13 c173
        movb      %dl, %dl                                      #280.13 c173
        vprefetch0 (%r10,%rax,4)                                #280.13 c177
        movb      %dl, %dl                                      #280.32 c177
        vprefetch1 (%rbx,%r12,4)                                #280.32 c181
        lea       80(%r15), %r12d                               #278.13 c181
        vprefetch0 (%rbx,%rax,4)                                #280.32 c185
        lea       272(%r15), %eax                               #278.13 c185
        addl      $32, %r15d                                    #276.9 c189
        vprefetche1 (%r14,%rax,4)                               #278.13 c189
        movl      %r15d, %r15d                                  #276.9
        vprefetch0 (%r14,%r12,4)                                #278.13 c193
        movb      %dl, %dl                                      #278.32 c193
        vprefetch1 (%r11,%rax,4)                                #278.32 c197
        movb      %dl, %dl                                      #278.32 c197
        vprefetch0 (%r11,%r12,4)                                #278.32 c201
        movb      %bl, %bl                                      #279.13 c201
        vprefetche1 (%r9,%rax,4)                                #279.13 c205
        cmpl      %ecx, %edx                                    #276.9 c205
        vprefetch0 (%r9,%r12,4)                                 #279.13 c209
        movb      %dl, %dl                                      #279.32 c209
        vprefetch1 (%r8,%rax,4)                                 #279.32 c213
        movb      %dl, %dl                                      #279.32 c213
        vprefetch0 (%r8,%r12,4)                                 #279.32 c217
        movb      %dl, %dl                                      #280.13 c217
        vprefetche1 (%r10,%rax,4)                               #280.13 c221
        movb      %dl, %dl                                      #280.13 c221
        vprefetch0 (%r10,%r12,4)                                #280.13 c225
        movb      %dl, %dl                                      #280.32 c225
        vprefetch1 (%rbx,%rax,4)                                #280.32 c229
        movb      %dl, %dl                                      #280.32 c229
        vprefetch0 (%rbx,%r12,4)                                #280.32 c233
        jb        ..B1.72       # Prob 99%                      #276.9 c233
                                # LOE rbx r8 r9 r10 r11 r14 r15 edx ecx esi edi r13d zmm0
..B1.73:                        # Preds ..B1.69 ..B1.72 Latency 1
        movl      (%rsp), %r12d                                 # c1
                                # LOE rbx r8 r9 r10 r11 r14 ecx esi edi r12d r13d
..B1.74:                        # Preds ..B1.66 ..B1.73 Latency 5
        lea       1(%rcx), %eax                                 #276.9 c1
        cmpl      %eax, %edi                                    #276.9 c5
        jb        ..B1.80       # Prob 50%                      #276.9 c5
                                # LOE rbx r8 r9 r10 r11 r14 ecx esi edi r12d r13d
..B1.75:                        # Preds ..B1.74 Latency 25
        subl      %ecx, %edi                                    #276.9 c1
        addl      %ecx, %esi                                    #278.13 c1
        movl      %edi, 40(%rsp)                                #276.9 c5
        vpbroadcastd .L_2il0floatpacket.223(%rip), %zmm4        #276.9 c9
        vmovaps   .L_2il0floatpacket.224(%rip), %zmm3           #276.9 c13
        vpxord    %zmm2, %zmm2, %zmm2                           #278.13 c17
        vbroadcastss .L_2il0floatpacket.225(%rip), %zmm1        #278.27 c21
        vpbroadcastd 40(%rsp), %zmm0                            #276.9 c25
                                # LOE rbx r8 r9 r10 r11 r14 esi edi r12d r13d zmm0 zmm1 zmm2 zmm3 zmm4
..B1.76:                        # Preds ..B1.78 ..B1.75 Latency 17
        vpcmpud   $6, %zmm0, %zmm3, %k1                         #276.9 c1
        movl      %esi, %eax                                    #278.13 c1
        nop                                                     #276.9 c5
        knot      %k1, %k1                                      #276.9 c9
        knot      %k1, %k0                                      #276.9 c13
        jknzd     ..B1.142, %k0 # Prob 9%                       #276.9 c17
                                # LOE rax rbx r8 r9 r10 r11 r14 esi edi r12d r13d zmm0 zmm1 zmm2 zmm3 zmm4 k1
..B1.77:                        # Preds ..B1.76 Latency 81
        vloadunpackld (%r14,%rax,4), %zmm6                      #278.13 c1
        vloadunpackld (%r11,%rax,4), %zmm5                      #278.32 c5
        vloadunpackhd 64(%r14,%rax,4), %zmm6                    #278.13 c9
        vloadunpackhd 64(%r11,%rax,4), %zmm5                    #278.32 c13
        vfmadd231ps %zmm1, %zmm5, %zmm6                         #278.13 c17
        nop                                                     #278.13 c21
        vpackstoreld %zmm6, (%r14,%rax,4)                       #278.13 c25
        vpackstorehd %zmm6, 64(%r14,%rax,4)                     #278.13 c29
        vloadunpackld (%r9,%rax,4), %zmm8                       #279.13 c33
        vloadunpackld (%r8,%rax,4), %zmm7                       #279.32 c37
        vloadunpackhd 64(%r9,%rax,4), %zmm8                     #279.13 c41
        vloadunpackhd 64(%r8,%rax,4), %zmm7                     #279.32 c45
        vfmadd231ps %zmm1, %zmm7, %zmm8                         #279.13 c49
        nop                                                     #279.13 c53
        vpackstoreld %zmm8, (%r9,%rax,4)                        #279.13 c57
        vpackstorehd %zmm8, 64(%r9,%rax,4)                      #279.13 c61
        vloadunpackld (%rbx,%rax,4), %zmm9                      #280.32 c65
        vloadunpackhd 64(%rbx,%rax,4), %zmm9                    #280.32 c69
        vfmadd213ps (%r10,%rax,4), %zmm1, %zmm9                 #280.13 c73
        nop                                                     #280.13 c77
        vmovaps   %zmm9, (%r10,%rax,4)                          #280.13 c81
                                # LOE rbx r8 r9 r10 r11 r14 esi edi r12d r13d zmm0 zmm1 zmm2 zmm3 zmm4
..B1.78:                        # Preds ..B1.142 ..B1.77 Latency 9
        addl      $16, %r13d                                    #276.9 c1
        addl      $16, %esi                                     #276.9 c1
        vpaddd    %zmm4, %zmm3, %zmm3                           #276.9 c5
        cmpl      %edi, %r13d                                   #276.9 c5
        jb        ..B1.76       # Prob 99%                      #276.9 c9
                                # LOE rbx r8 r9 r10 r11 r14 esi edi r12d r13d zmm0 zmm1 zmm2 zmm3 zmm4
..B1.80:                        # Preds ..B1.78 ..B1.58 ..B1.59 ..B1.65 ..B1.74
                                #       Latency 9
        lea       .2.5_2_kmpc_loc_struct_pack.128(%rip), %rdi   #273.9 c1
        movl      %r12d, %esi                                   #273.9 c1
        xorl      %eax, %eax                                    #273.9 c5
..___tag_value__Z18particles_simulate14t_particles_DA.141:      #273.9
        call      __kmpc_for_static_fini@PLT                    #273.9
..___tag_value__Z18particles_simulate14t_particles_DA.142:      #
                                # LOE
..B1.81:                        # Preds ..B1.80 Latency 13
        movq      48(%rsp), %r15                                #273.9 c1
..___tag_value__Z18particles_simulate14t_particles_DA.143:      #
        movq      56(%rsp), %r14                                #273.9 c1
..___tag_value__Z18particles_simulate14t_particles_DA.144:      #
        movq      64(%rsp), %r13                                #273.9 c5
..___tag_value__Z18particles_simulate14t_particles_DA.145:      #
        movq      72(%rsp), %r12                                #273.9 c5
..___tag_value__Z18particles_simulate14t_particles_DA.146:      #
        movq      80(%rsp), %rbx                                #273.9 c9
..___tag_value__Z18particles_simulate14t_particles_DA.147:      #
        movq      %rbp, %rsp                                    #273.9 c13
        popq      %rbp                                          #273.9
..___tag_value__Z18particles_simulate14t_particles_DA.148:      #
        ret                                                     #273.9
..___tag_value__Z18particles_simulate14t_particles_DA.150:      #
                                # LOE
L__Z18particles_simulate14t_particles_DA_262__par_loop2_2.100:
# parameter 1: %rdi
# parameter 2: %rsi
# parameter 3: %rdx
# parameter 4: %rcx
# parameter 5: %r8
# parameter 6: %r9
# parameter 7: 16 + %rbp
# parameter 8: 24 + %rbp
# parameter 9: 32 + %rbp
# parameter 10: 40 + %rbp
..B1.82:                        # Preds ..B1.0 Latency 61
        pushq     %rbp                                          #262.9
..___tag_value__Z18particles_simulate14t_particles_DA.152:      #
        movq      %rsp, %rbp                                    #262.9
..___tag_value__Z18particles_simulate14t_particles_DA.153:      #
        andq      $-64, %rsp                                    #262.9
        subq      $128, %rsp                                    #262.9 c1
        movl      (%rdi), %esi                                  #262.9 c1
        movl      $1105919, 28(%rsp)                            #262.9 c5
        movq      %r12, 72(%rsp)                                #262.9 c9
..___tag_value__Z18particles_simulate14t_particles_DA.155:      #
        xorl      %r12d, %r12d                                  #262.9 c9
        movl      $1, %r11d                                     #262.9 c13
        movq      %rbx, 80(%rsp)                                #262.9 c13
        movq      %r15, 48(%rsp)                                #262.9 c17
..___tag_value__Z18particles_simulate14t_particles_DA.156:      #
        movq      %rdx, %rbx                                    #262.9 c17
        movq      %r14, 56(%rsp)                                #262.9 c21
        lea       .2.5_2_kmpc_loc_struct_pack.102(%rip), %rdi   #262.9 c21
        movq      %r13, 64(%rsp)                                #262.9 c25
        movl      $34, %edx                                     #262.9 c25
        movl      %esi, 16(%rsp)                                #262.9 c29
        xorl      %eax, %eax                                    #262.9 c29
        movl      %r12d, 24(%rsp)                               #262.9 c33
        movl      %r12d, 32(%rsp)                               #262.9 c33
        movl      %r11d, 36(%rsp)                               #262.9 c37
        addq      $-32, %rsp                                    #262.9 c37
        lea       68(%rsp), %r10                                #262.9 c41
        lea       64(%rsp), %rcx                                #262.9 c41
        lea       56(%rsp), %r8                                 #262.9 c45
        lea       60(%rsp), %r9                                 #262.9 c45
        movq      %r10, (%rsp)                                  #262.9 c49
        movl      %r11d, 8(%rsp)                                #262.9 c53
        movl      %r11d, 16(%rsp)                               #262.9 c57
..___tag_value__Z18particles_simulate14t_particles_DA.158:      #262.9
        call      __kmpc_for_static_init_4u@PLT                 #262.9
..___tag_value__Z18particles_simulate14t_particles_DA.159:      #
                                # LOE rbx r12d
..B1.164:                       # Preds ..B1.82 Latency 1
        addq      $32, %rsp                                     #262.9 c1
                                # LOE rbx r12d
..B1.83:                        # Preds ..B1.164 Latency 9
        movl      24(%rsp), %esi                                #262.9 c1
        movl      28(%rsp), %r14d                               #262.9 c1
        cmpl      $1105919, 24(%rsp)                            #262.9 c5
        ja        ..B1.105      # Prob 50%                      #262.9 c9
                                # LOE rbx esi r12d r14d
..B1.84:                        # Preds ..B1.83 Latency 9
        cmpl      $1105919, %r14d                               #262.9 c1
        jb        ..L162        # Prob 50%                      #262.9 c5
        movl      $1105919, %r14d                               #262.9
..L162:                                                         #
        cmpl      %esi, %r14d                                   #265.33 c9
        jb        ..B1.105      # Prob 50%                      #265.33 c9
                                # LOE rbx esi r12d r14d
..B1.85:                        # Preds ..B1.84 Latency 25
        movq      48(%rbx), %r10                                #267.33 c1
        movl      %esi, %r15d                                   #267.33 c1
        lea       (%r10,%r15,4), %rdx                           #267.33 c5
        subl      %esi, %r14d                                   #265.9 c5
        andq      $63, %rdx                                     #265.9 c9
        incl      %r14d                                         #265.9 c9
        movq      80(%rbx), %r13                                #267.13 c13
        movq      56(%rbx), %r11                                #267.23 c13
        movq      88(%rbx), %r8                                 #268.13 c17
        movq      64(%rbx), %rdi                                #268.23 c17
        movq      96(%rbx), %r9                                 #269.13 c21
        movq      72(%rbx), %rbx                                #269.23 c21
        testl     %edx, %edx                                    #265.9 c25
        je        ..B1.87       # Prob 50%                      #265.9 c25
                                # LOE rbx rdi r8 r9 r10 r11 r13 r15 edx esi r12d r14d
..B1.86:                        # Preds ..B1.85 Latency 17
        negl      %edx                                          #265.9 c1
        addl      $64, %edx                                     #265.9 c5
        shrl      $2, %edx                                      #265.9 c9
        cmpl      %edx, %r14d                                   #265.9 c13
        jge       ..L163        # Prob 50%                      #265.9 c17
        movl      %r14d, %edx                                   #265.9
..L163:                                                         #
                                # LOE rbx rdi r8 r9 r10 r11 r13 r15 edx esi r12d r14d
..B1.87:                        # Preds ..B1.86 ..B1.85 Latency 21
        movl      %r14d, %ecx                                   #265.9 c1
        subl      %edx, %ecx                                    #265.9 c5
        andl      $31, %ecx                                     #265.9 c9
        negl      %ecx                                          #265.9 c13
        addl      %r14d, %ecx                                   #265.9 c17
        cmpl      $1, %edx                                      #265.9 c21
        jb        ..B1.91       # Prob 50%                      #265.9 c21
                                # LOE rbx rdi r8 r9 r10 r11 r13 r15 edx ecx esi r12d r14d
..B1.88:                        # Preds ..B1.87 Latency 25
        movl      %edx, 40(%rsp)                                #265.9 c1
        movl      %r12d, %eax                                   #265.9 c1
        vpbroadcastd .L_2il0floatpacket.223(%rip), %zmm2        #265.9 c5
        vmovaps   .L_2il0floatpacket.224(%rip), %zmm4           #265.9 c9
        vpbroadcastd 40(%rsp), %zmm3                            #265.9 c13
        kxnor     %k0, %k0                                      #265.9 c13
        vmovaps   .L_2il0floatpacket.226(%rip), %zmm5           #265.9 c17
        vbroadcasti32x4 .L_2il0floatpacket.227(%rip), %zmm1     #265.9 c21
        movl      %ecx, (%rsp)                                  #265.9 c25
        movq      %r15, 8(%rsp)                                 #265.9 c25
                                # LOE rbx rdi r8 r9 r10 r11 r13 eax edx esi r14d zmm1 zmm2 zmm3 zmm4 zmm5 k0
..B1.89:                        # Preds ..B1.89 ..B1.88 Latency 325
        vpcmpud   $6, %zmm3, %zmm4, %k2                         #265.9 c1
        lea       (%rsi,%rax), %r12d                            #267.23 c1
        vpxord    %zmm14, %zmm14, %zmm14                        #267.33 c5
        lea       (%r10,%r12,4), %rcx                           #267.33 c5
        vpxord    %zmm13, %zmm13, %zmm13                        #267.23 c9
        knot      %k2, %k1                                      #265.9 c9
        vpxord    %zmm6, %zmm6, %zmm6                           #267.33 c13
        kmov      %k1, %k4                                      #267.33 c13
..L165:                                                         #267.33
        vgatherdps (%rcx,%zmm5,4), %zmm14{%k4}                  #267.33
        jkzd      ..L164, %k4   # Prob 50%                      #267.33
        vgatherdps (%rcx,%zmm5,4), %zmm14{%k4}                  #267.33
        jknzd     ..L165, %k4   # Prob 50%                      #267.33
..L164:                                                         #
        vfixupnanps .L_2il0floatpacket.228(%rip){1to16}, %zmm14, %zmm6 #267.33 c25
        vgetmantps $0, %zmm14, %zmm7                            #267.33 c29
        lea       (%r11,%r12,4), %r15                           #267.23 c29
        vrcp23ps  %zmm7, %zmm12                                 #267.33 c33
        kmov      %k1, %k3                                      #267.23 c33
..L167:                                                         #267.23
        vgatherdps (%r15,%zmm5,4), %zmm13{%k3}                  #267.23
        jkzd      ..L166, %k3   # Prob 50%                      #267.23
        vgatherdps (%r15,%zmm5,4), %zmm13{%k3}                  #267.23
        jknzd     ..L167, %k3   # Prob 50%                      #267.23
..L166:                                                         #
        vfixupnanps .L_2il0floatpacket.228(%rip){1to16}, %zmm13, %zmm6 #267.33 c45
        vmovaps   %zmm1{aaaa}, %zmm0                            #267.33 c49
        lea       (%r13,%r12,4), %r15                           #267.13 c49
        vcmpeqps  %zmm6, %zmm6, %k6                             #267.33 c53
        kmov      %k1, %k7                                      #267.13 c53
        vfnmadd213ps {rn-sae}, %zmm0, %zmm12, %zmm7             #267.33 c57
        kmov      %k1, %k3                                      #268.33 c57
        vgetexpps %zmm14, %zmm9                                 #267.33 c61
        kmov      %k6, %k5                                      #267.33 c61
        vgetexpps %zmm13, %zmm8                                 #267.33 c65
        kandn     %k0, %k5                                      #267.33 c65
        vfmadd213ps {rn-sae}, %zmm12, %zmm7, %zmm12             #267.33 c69
        kmov      %k1, %k2                                      #268.23 c69
        vgetmantps $0, %zmm13, %zmm11                           #267.33 c73
        addl      $16, %eax                                     #265.9 c73
        vsubps    %zmm9, %zmm8, %zmm10                          #267.33 c77
        vfixupnanps .L_2il0floatpacket.229(%rip){1to16}, %zmm14, %zmm14 #267.33 c81
        vmulps    {rn-sae}, %zmm12, %zmm11, %zmm16{%k6}         #267.33 c85
        vcvtfxpntps2dq $0, %zmm10, %zmm15                       #267.33 c89
        vmulps    {rn-sae}, %zmm14, %zmm13, %zmm16{%k5}         #267.33 c93
        vscaleps  {rn}, %zmm15, %zmm16, %zmm16{%k6}             #267.33 c97
        kmov      %k1, %k6                                      #268.13 c97
        vmovaps   %zmm16, %zmm17                                #267.33 c101
        vpxord    %zmm26, %zmm26, %zmm26                        #268.33 c105
..L169:                                                         #267.13
        vscatterdps %zmm17, (%r15,%zmm5,4){%k7}                 #267.13
        jkzd      ..L168, %k7   # Prob 50%                      #267.13
        vscatterdps %zmm17, (%r15,%zmm5,4){%k7}                 #267.13
        jknzd     ..L169, %k7   # Prob 50%                      #267.13
..L168:                                                         #
..L171:                                                         #268.33
        vgatherdps (%rcx,%zmm5,4), %zmm26{%k3}                  #268.33
        jkzd      ..L170, %k3   # Prob 50%                      #268.33
        vgatherdps (%rcx,%zmm5,4), %zmm26{%k3}                  #268.33
        jknzd     ..L171, %k3   # Prob 50%                      #268.33
..L170:                                                         #
        vpxord    %zmm25, %zmm25, %zmm25                        #268.23 c125
        lea       (%rdi,%r12,4), %r15                           #268.23 c125
        vpxord    %zmm18, %zmm18, %zmm18                        #268.33 c129
        kmov      %k1, %k3                                      #269.33 c129
..L173:                                                         #268.23
        vgatherdps (%r15,%zmm5,4), %zmm25{%k2}                  #268.23
        jkzd      ..L172, %k2   # Prob 50%                      #268.23
        vgatherdps (%r15,%zmm5,4), %zmm25{%k2}                  #268.23
        jknzd     ..L173, %k2   # Prob 50%                      #268.23
..L172:                                                         #
        vfixupnanps .L_2il0floatpacket.228(%rip){1to16}, %zmm26, %zmm18 #268.33 c141
        vgetmantps $0, %zmm26, %zmm19                           #268.33 c145
        lea       (%r8,%r12,4), %r15                            #268.13 c145
        vfixupnanps .L_2il0floatpacket.228(%rip){1to16}, %zmm25, %zmm18 #268.33 c149
        vrcp23ps  %zmm19, %zmm24                                #268.33 c153
        kmov      %k1, %k2                                      #269.23 c153
        vcmpeqps  %zmm18, %zmm18, %k5                           #268.33 c157
        vfnmadd213ps {rn-sae}, %zmm0, %zmm24, %zmm19            #268.33 c161
        vgetexpps %zmm26, %zmm21                                #268.33 c165
        kmov      %k5, %k4                                      #268.33 c165
        vgetexpps %zmm25, %zmm20                                #268.33 c169
        kandn     %k0, %k4                                      #268.33 c169
        vfmadd213ps {rn-sae}, %zmm24, %zmm19, %zmm24            #268.33 c173
        vgetmantps $0, %zmm25, %zmm23                           #268.33 c177
        vsubps    %zmm21, %zmm20, %zmm22                        #268.33 c181
        vfixupnanps .L_2il0floatpacket.229(%rip){1to16}, %zmm26, %zmm26 #268.33 c185
        vmulps    {rn-sae}, %zmm24, %zmm23, %zmm28{%k5}         #268.33 c189
        vcvtfxpntps2dq $0, %zmm22, %zmm27                       #268.33 c193
        vmulps    {rn-sae}, %zmm26, %zmm25, %zmm28{%k4}         #268.33 c197
        vscaleps  {rn}, %zmm27, %zmm28, %zmm28{%k5}             #268.33 c201
        vmovaps   %zmm28, %zmm29                                #268.33 c205
        vpxord    %zmm9, %zmm9, %zmm9                           #269.33 c209
..L175:                                                         #268.13
        vscatterdps %zmm29, (%r15,%zmm5,4){%k6}                 #268.13
        jkzd      ..L174, %k6   # Prob 50%                      #268.13
        vscatterdps %zmm29, (%r15,%zmm5,4){%k6}                 #268.13
        jknzd     ..L175, %k6   # Prob 50%                      #268.13
..L174:                                                         #
..L177:                                                         #269.33
        vgatherdps (%rcx,%zmm5,4), %zmm9{%k3}                   #269.33
        jkzd      ..L176, %k3   # Prob 50%                      #269.33
        vgatherdps (%rcx,%zmm5,4), %zmm9{%k3}                   #269.33
        jknzd     ..L177, %k3   # Prob 50%                      #269.33
..L176:                                                         #
        vpxord    %zmm8, %zmm8, %zmm8                           #269.23 c229
        lea       (%rbx,%r12,4), %r15                           #269.23 c229
        vpxord    %zmm30, %zmm30, %zmm30                        #269.33 c233
        lea       (%r9,%r12,4), %rcx                            #269.13 c233
..L179:                                                         #269.23
        vgatherdps (%r15,%zmm5,4), %zmm8{%k2}                   #269.23
        jkzd      ..L178, %k2   # Prob 50%                      #269.23
        vgatherdps (%r15,%zmm5,4), %zmm8{%k2}                   #269.23
        jknzd     ..L179, %k2   # Prob 50%                      #269.23
..L178:                                                         #
        vgetmantps $0, %zmm9, %zmm31                            #269.33 c245
        vfixupnanps .L_2il0floatpacket.228(%rip){1to16}, %zmm9, %zmm30 #269.33 c249
        vrcp23ps  %zmm31, %zmm7                                 #269.33 c253
        vfixupnanps .L_2il0floatpacket.228(%rip){1to16}, %zmm8, %zmm30 #269.33 c257
        vfnmadd213ps {rn-sae}, %zmm0, %zmm7, %zmm31             #269.33 c261
        vcmpeqps  %zmm30, %zmm30, %k7                           #269.33 c265
        vfmadd213ps {rn-sae}, %zmm7, %zmm31, %zmm7              #269.33 c269
        vgetexpps %zmm9, %zmm31                                 #269.33 c273
        kmov      %k7, %k4                                      #269.33 c273
        vgetexpps %zmm8, %zmm0                                  #269.33 c277
        kandn     %k0, %k4                                      #269.33 c277
        vgetmantps $0, %zmm8, %zmm6                             #269.33 c281
        vsubps    %zmm31, %zmm0, %zmm30                         #269.33 c285
        vfixupnanps .L_2il0floatpacket.229(%rip){1to16}, %zmm9, %zmm9 #269.33 c289
        vmulps    {rn-sae}, %zmm7, %zmm6, %zmm11{%k7}           #269.33 c293
        vcvtfxpntps2dq $0, %zmm30, %zmm10                       #269.33 c297
        vmulps    {rn-sae}, %zmm9, %zmm8, %zmm11{%k4}           #269.33 c301
        vscaleps  {rn}, %zmm10, %zmm11, %zmm11{%k7}             #269.33 c305
        vmovaps   %zmm11, %zmm12                                #269.33 c309
        vpaddd    %zmm2, %zmm4, %zmm4                           #269.13 c313
..L181:                                                         #269.13
        vscatterdps %zmm12, (%rcx,%zmm5,4){%k1}                 #269.13
        jkzd      ..L180, %k1   # Prob 50%                      #269.13
        vscatterdps %zmm12, (%rcx,%zmm5,4){%k1}                 #269.13
        jknzd     ..L181, %k1   # Prob 50%                      #269.13
..L180:                                                         #
        cmpl      %edx, %eax                                    #265.9 c325
        jb        ..B1.89       # Prob 99%                      #265.9 c325
                                # LOE rbx rdi r8 r9 r10 r11 r13 eax edx esi r14d zmm1 zmm2 zmm3 zmm4 zmm5 k0
..B1.90:                        # Preds ..B1.89 Latency 9
        movl      (%rsp), %ecx                                  # c1
        xorl      %r12d, %r12d                                  # c1
        movq      8(%rsp), %r15                                 # c5
        cmpl      %edx, %r14d                                   #265.9 c5
        je        ..B1.105      # Prob 50%                      #265.9 c9
                                # LOE rbx rdi r8 r9 r10 r11 r13 r15 edx ecx esi r12d r14d
..B1.91:                        # Preds ..B1.90 ..B1.87 Latency 5
        lea       32(%rdx), %eax                                #265.9 c1
        cmpl      %eax, %ecx                                    #265.9 c5
        jl        ..B1.99       # Prob 50%                      #265.9 c5
                                # LOE rbx rdi r8 r9 r10 r11 r13 r15 edx ecx esi r12d r14d
..B1.92:                        # Preds ..B1.91 Latency 13
        lea       (%rsi,%rdx), %eax                             # c1
        movl      %eax, (%rsp)                                  # c5
        lea       (%rdx,%rsi), %eax                             #269.13 c5
        lea       (%r9,%rax,4), %rax                            #269.13 c9
        testq     $63, %rax                                     #265.9 c13
        je        ..B1.96       # Prob 60%                      #265.9 c13
                                # LOE rbx rdi r8 r9 r10 r11 r13 r15 edx ecx esi r12d r14d
..B1.93:                        # Preds ..B1.92 Latency 25
        lea       32(%rsi), %eax                                #265.9 c1
        vprefetch0 (%r11,%r15,4)                                #265.9 c1
        vprefetch0 (%r11,%rax,4)                                #265.9 c5
        kxnor     %k0, %k0                                      #265.9 c5
        vprefetch0 (%r10,%r15,4)                                #265.9 c9
        movb      %dl, %dl                                      #265.9 c9
        vprefetch0 (%r10,%rax,4)                                #265.9 c13
        movb      %dl, %dl                                      #265.9 c13
        vprefetche0 (%r13,%r15,4)                               #265.9 c17
        movb      %dl, %dl                                      #265.9 c17
        movl      (%rsp), %r15d                                 #265.9 c21
        vprefetche0 (%r13,%rax,4)                               #265.9 c21
        movl      %r15d, %r15d                                  #265.9
        vbroadcasti32x4 .L_2il0floatpacket.227(%rip), %zmm1     #265.9 c25
                                # LOE rbx rdi r8 r9 r10 r11 r13 r15 edx ecx esi r14d zmm1 k0
..B1.94:                        # Preds ..B1.94 ..B1.93 Latency 665
        vloadunpackld (%r11,%r15,4), %zmm9                      #267.23 c1
        lea       16(%r15), %eax                                #267.23 c1
        vmovaps   (%r10,%r15,4), %zmm10                         #267.33 c5
        addl      $32, %edx                                     #265.9 c5
        vpxord    %zmm2, %zmm2, %zmm2                           #267.33 c9
        lea       256(%r15), %r12d                              #267.23 c9
        vloadunpackhd 64(%r11,%r15,4), %zmm9                    #267.23 c13
        vprefetch1 (%r11,%r12,4)                                #267.23 c13
        vfixupnanps .L_2il0floatpacket.228(%rip){1to16}, %zmm10, %zmm2 #267.33 c17
        vgetmantps $0, (%r10,%r15,4), %zmm3                     #267.33 c21
        vfixupnanps .L_2il0floatpacket.228(%rip){1to16}, %zmm9, %zmm2 #267.33 c25
        vrcp23ps  %zmm3, %zmm8                                  #267.33 c29
        vmovaps   %zmm1{aaaa}, %zmm0                            #267.33 c33
        vcmpeqps  %zmm2, %zmm2, %k2                             #267.33 c37
        vfnmadd213ps {rn-sae}, %zmm0, %zmm8, %zmm3              #267.33 c41
        vgetexpps (%r10,%r15,4), %zmm5                          #267.33 c45
        kmov      %k2, %k1                                      #267.33 c45
        vgetexpps %zmm9, %zmm4                                  #267.33 c49
        kandn     %k0, %k1                                      #267.33 c49
        vfmadd213ps {rn-sae}, %zmm8, %zmm3, %zmm8               #267.33 c53
        vgetmantps $0, %zmm9, %zmm7                             #267.33 c57
        vsubps    %zmm5, %zmm4, %zmm6                           #267.33 c61
        vfixupnanps .L_2il0floatpacket.229(%rip){1to16}, %zmm10, %zmm10 #267.33 c65
        vmulps    {rn-sae}, %zmm8, %zmm7, %zmm12{%k2}           #267.33 c69
        vcvtfxpntps2dq $0, %zmm6, %zmm11                        #267.33 c73
        vmulps    {rn-sae}, %zmm10, %zmm9, %zmm12{%k1}          #267.33 c77
        vscaleps  {rn}, %zmm11, %zmm12, %zmm12{%k2}             #267.33 c81
        vmovaps   %zmm12, %zmm13                                #267.33 c85
        vpxord    %zmm14, %zmm14, %zmm14                        #268.33 c89
        vpxord    %zmm26, %zmm26, %zmm26                        #269.33 c93
        vpackstoreld %zmm13, (%r13,%r15,4)                      #267.13 c93
        vpxord    %zmm7, %zmm7, %zmm7                           #267.33 c97
        vpackstorehd %zmm13, 64(%r13,%r15,4)                    #267.13 c97
        vloadunpackld (%rdi,%r15,4), %zmm21                     #268.23 c101
        vmovaps   (%r10,%r15,4), %zmm22                         #268.33 c105
        vloadunpackhd 64(%rdi,%r15,4), %zmm21                   #268.23 c109
        vfixupnanps .L_2il0floatpacket.228(%rip){1to16}, %zmm22, %zmm14 #268.33 c113
        vgetmantps $0, (%r10,%r15,4), %zmm15                    #268.33 c117
        vfixupnanps .L_2il0floatpacket.228(%rip){1to16}, %zmm21, %zmm14 #268.33 c121
        vrcp23ps  %zmm15, %zmm20                                #268.33 c125
        vcmpeqps  %zmm14, %zmm14, %k4                           #268.33 c129
        vfnmadd213ps {rn-sae}, %zmm0, %zmm20, %zmm15            #268.33 c133
        vgetexpps (%r10,%r15,4), %zmm17                         #268.33 c137
        kmov      %k4, %k3                                      #268.33 c137
        vgetexpps %zmm21, %zmm16                                #268.33 c141
        kandn     %k0, %k3                                      #268.33 c141
        vfmadd213ps {rn-sae}, %zmm20, %zmm15, %zmm20            #268.33 c145
        vgetmantps $0, %zmm21, %zmm19                           #268.33 c149
        vsubps    %zmm17, %zmm16, %zmm18                        #268.33 c153
        vfixupnanps .L_2il0floatpacket.229(%rip){1to16}, %zmm22, %zmm22 #268.33 c157
        vmulps    {rn-sae}, %zmm20, %zmm19, %zmm24{%k4}         #268.33 c161
        vcvtfxpntps2dq $0, %zmm18, %zmm23                       #268.33 c165
        vmulps    {rn-sae}, %zmm22, %zmm21, %zmm24{%k3}         #268.33 c169
        vscaleps  {rn}, %zmm23, %zmm24, %zmm24{%k4}             #268.33 c173
        vmovaps   %zmm24, %zmm25                                #268.33 c177
        vpxord    %zmm19, %zmm19, %zmm19                        #268.33 c181
        movb      %al, %al                                      #268.13 c181
        vpackstoreld %zmm25, (%r8,%r15,4)                       #268.13 c185
        vpackstorehd %zmm25, 64(%r8,%r15,4)                     #268.13 c189
        vloadunpackld (%rbx,%r15,4), %zmm2                      #269.23 c193
        vmovaps   (%r10,%r15,4), %zmm3                          #269.33 c197
        vloadunpackhd 64(%rbx,%r15,4), %zmm2                    #269.23 c201
        vfixupnanps .L_2il0floatpacket.228(%rip){1to16}, %zmm3, %zmm26 #269.33 c205
        vfixupnanps .L_2il0floatpacket.228(%rip){1to16}, %zmm2, %zmm26 #269.33 c209
        vgetmantps $0, (%r10,%r15,4), %zmm27                    #269.33 c213
        vcmpeqps  %zmm26, %zmm26, %k6                           #269.33 c217
        vrcp23ps  %zmm27, %zmm26                                #269.33 c221
        vfnmadd213ps {rn-sae}, %zmm0, %zmm26, %zmm27            #269.33 c225
        kmov      %k6, %k5                                      #269.33 c225
        vgetexpps (%r10,%r15,4), %zmm29                         #269.33 c229
        kandn     %k0, %k5                                      #269.33 c229
        vgetexpps %zmm2, %zmm28                                 #269.33 c233
        vfmadd213ps {rn-sae}, %zmm26, %zmm27, %zmm26            #269.33 c237
        vgetmantps $0, %zmm2, %zmm31                            #269.33 c241
        vsubps    %zmm29, %zmm28, %zmm30                        #269.33 c245
        vfixupnanps .L_2il0floatpacket.229(%rip){1to16}, %zmm3, %zmm3 #269.33 c249
        vmulps    {rn-sae}, %zmm26, %zmm31, %zmm5{%k6}          #269.33 c253
        vcvtfxpntps2dq $0, %zmm30, %zmm4                        #269.33 c257
        vmulps    {rn-sae}, %zmm3, %zmm2, %zmm5{%k5}            #269.33 c261
        vscaleps  {rn}, %zmm4, %zmm5, %zmm5{%k6}                #269.33 c265
        vmovaps   %zmm5, %zmm6                                  #269.33 c269
        vpxord    %zmm2, %zmm2, %zmm2                           #269.33 c273
        movb      %al, %al                                      #269.13 c273
        vpackstoreld %zmm6, (%r9,%r15,4)                        #269.13 c277
        vpackstorehd %zmm6, 64(%r9,%r15,4)                      #269.13 c281
        vloadunpackld (%r11,%rax,4), %zmm14                     #267.23 c285
        vmovaps   (%r10,%rax,4), %zmm15                         #267.33 c289
        vloadunpackhd 64(%r11,%rax,4), %zmm14                   #267.23 c293
        vfixupnanps .L_2il0floatpacket.228(%rip){1to16}, %zmm15, %zmm7 #267.33 c297
        vgetmantps $0, (%r10,%rax,4), %zmm8                     #267.33 c301
        vfixupnanps .L_2il0floatpacket.228(%rip){1to16}, %zmm14, %zmm7 #267.33 c305
        vrcp23ps  %zmm8, %zmm13                                 #267.33 c309
        vcmpeqps  %zmm7, %zmm7, %k1                             #267.33 c313
        vfnmadd213ps {rn-sae}, %zmm0, %zmm13, %zmm8             #267.33 c317
        vgetexpps (%r10,%rax,4), %zmm10                         #267.33 c321
        kmov      %k1, %k7                                      #267.33 c321
        vgetexpps %zmm14, %zmm9                                 #267.33 c325
        kandn     %k0, %k7                                      #267.33 c325
        vfmadd213ps {rn-sae}, %zmm13, %zmm8, %zmm13             #267.33 c329
        vgetmantps $0, %zmm14, %zmm12                           #267.33 c333
        vsubps    %zmm10, %zmm9, %zmm11                         #267.33 c337
        vfixupnanps .L_2il0floatpacket.229(%rip){1to16}, %zmm15, %zmm15 #267.33 c341
        vmulps    {rn-sae}, %zmm13, %zmm12, %zmm17{%k1}         #267.33 c345
        vcvtfxpntps2dq $0, %zmm11, %zmm16                       #267.33 c349
        vmulps    {rn-sae}, %zmm15, %zmm14, %zmm17{%k7}         #267.33 c353
        vscaleps  {rn}, %zmm16, %zmm17, %zmm17{%k1}             #267.33 c357
        vmovaps   %zmm17, %zmm18                                #267.33 c361
        nop                                                     #267.13 c365
        vpackstoreld %zmm18, (%r13,%rax,4)                      #267.13 c369
        vpackstorehd %zmm18, 64(%r13,%rax,4)                    #267.13 c373
        vloadunpackld (%rdi,%rax,4), %zmm27                     #268.23 c377
        vmovaps   (%r10,%rax,4), %zmm28                         #268.33 c381
        vloadunpackhd 64(%rdi,%rax,4), %zmm27                   #268.23 c385
        vfixupnanps .L_2il0floatpacket.228(%rip){1to16}, %zmm28, %zmm19 #268.33 c389
        vgetmantps $0, (%r10,%rax,4), %zmm20                    #268.33 c393
        vfixupnanps .L_2il0floatpacket.228(%rip){1to16}, %zmm27, %zmm19 #268.33 c397
        vrcp23ps  %zmm20, %zmm25                                #268.33 c401
        vcmpeqps  %zmm19, %zmm19, %k3                           #268.33 c405
        vfnmadd213ps {rn-sae}, %zmm0, %zmm25, %zmm20            #268.33 c409
        vgetexpps (%r10,%rax,4), %zmm22                         #268.33 c413
        kmov      %k3, %k2                                      #268.33 c413
        vgetexpps %zmm27, %zmm21                                #268.33 c417
        kandn     %k0, %k2                                      #268.33 c417
        vfmadd213ps {rn-sae}, %zmm25, %zmm20, %zmm25            #268.33 c421
        vgetmantps $0, %zmm27, %zmm24                           #268.33 c425
        vsubps    %zmm22, %zmm21, %zmm23                        #268.33 c429
        vfixupnanps .L_2il0floatpacket.229(%rip){1to16}, %zmm28, %zmm28 #268.33 c433
        vmulps    {rn-sae}, %zmm25, %zmm24, %zmm30{%k3}         #268.33 c437
        vcvtfxpntps2dq $0, %zmm23, %zmm29                       #268.33 c441
        vmulps    {rn-sae}, %zmm28, %zmm27, %zmm30{%k2}         #268.33 c445
        vscaleps  {rn}, %zmm29, %zmm30, %zmm30{%k3}             #268.33 c449
        vmovaps   %zmm30, %zmm31                                #268.33 c453
        nop                                                     #268.13 c457
        vpackstoreld %zmm31, (%r8,%rax,4)                       #268.13 c461
        vpackstorehd %zmm31, 64(%r8,%rax,4)                     #268.13 c465
        vloadunpackld (%rbx,%rax,4), %zmm5                      #269.23 c469
        vmovaps   (%r10,%rax,4), %zmm6                          #269.33 c473
        vgetmantps $0, (%r10,%rax,4), %zmm3                     #269.33 c477
        vloadunpackhd 64(%rbx,%rax,4), %zmm5                    #269.23 c481
        vfixupnanps .L_2il0floatpacket.228(%rip){1to16}, %zmm6, %zmm2 #269.33 c485
        vrcp23ps  %zmm3, %zmm4                                  #269.33 c489
        vfixupnanps .L_2il0floatpacket.228(%rip){1to16}, %zmm5, %zmm2 #269.33 c493
        vfnmadd213ps {rn-sae}, %zmm0, %zmm4, %zmm3              #269.33 c497
        vcmpeqps  %zmm2, %zmm2, %k5                             #269.33 c501
        vfmadd213ps {rn-sae}, %zmm4, %zmm3, %zmm4               #269.33 c505
        vgetexpps (%r10,%rax,4), %zmm3                          #269.33 c509
        kmov      %k5, %k4                                      #269.33 c509
        vgetexpps %zmm5, %zmm0                                  #269.33 c513
        kandn     %k0, %k4                                      #269.33 c513
        vgetmantps $0, %zmm5, %zmm2                             #269.33 c517
        vsubps    %zmm3, %zmm0, %zmm0                           #269.33 c521
        vfixupnanps .L_2il0floatpacket.229(%rip){1to16}, %zmm6, %zmm6 #269.33 c525
        vmulps    {rn-sae}, %zmm4, %zmm2, %zmm8{%k5}            #269.33 c529
        vcvtfxpntps2dq $0, %zmm0, %zmm7                         #269.33 c533
        vmulps    {rn-sae}, %zmm6, %zmm5, %zmm8{%k4}            #269.33 c537
        vscaleps  {rn}, %zmm7, %zmm8, %zmm8{%k5}                #269.33 c541
        vmovaps   %zmm8, %zmm9                                  #269.33 c545
        nop                                                     #269.13 c549
        vpackstoreld %zmm9, (%r9,%rax,4)                        #269.13 c553
        vpackstorehd %zmm9, 64(%r9,%rax,4)                      #269.13 c557
        movb      %dl, %dl                                      #267.23 c557
        lea       64(%r15), %eax                                #267.23 c561
        vprefetch0 (%r11,%rax,4)                                #267.23 c561
        vprefetch1 (%r10,%r12,4)                                #267.33 c565
        movb      %dl, %dl                                      #267.33 c565
        vprefetch0 (%r10,%rax,4)                                #267.33 c569
        movb      %dl, %dl                                      #267.13 c569
        vprefetche1 (%r13,%r12,4)                               #267.13 c573
        movb      %dl, %dl                                      #267.13 c573
        vprefetche0 (%r13,%rax,4)                               #267.13 c577
        movb      %dl, %dl                                      #268.23 c577
        vprefetch1 (%rdi,%r12,4)                                #268.23 c581
        movb      %dl, %dl                                      #268.23 c581
        vprefetch0 (%rdi,%rax,4)                                #268.23 c585
        movb      %dl, %dl                                      #268.13 c585
        vprefetche1 (%r8,%r12,4)                                #268.13 c589
        movb      %dl, %dl                                      #268.13 c589
        vprefetche0 (%r8,%rax,4)                                #268.13 c593
        movb      %dl, %dl                                      #269.23 c593
        vprefetch1 (%rbx,%r12,4)                                #269.23 c597
        movb      %dl, %dl                                      #269.23 c597
        vprefetch0 (%rbx,%rax,4)                                #269.23 c601
        movb      %dl, %dl                                      #269.13 c601
        vprefetche1 (%r9,%r12,4)                                #269.13 c605
        lea       80(%r15), %r12d                               #267.23 c605
        vprefetche0 (%r9,%rax,4)                                #269.13 c609
        lea       272(%r15), %eax                               #267.23 c609
        addl      $32, %r15d                                    #265.9 c613
        vprefetch1 (%r11,%rax,4)                                #267.23 c613
        movl      %r15d, %r15d                                  #265.9
        vprefetch0 (%r11,%r12,4)                                #267.23 c617
        movb      %dl, %dl                                      #267.33 c617
        vprefetch1 (%r10,%rax,4)                                #267.33 c621
        movb      %dl, %dl                                      #267.33 c621
        vprefetch0 (%r10,%r12,4)                                #267.33 c625
        movb      %bl, %bl                                      #267.13 c625
        vprefetche1 (%r13,%rax,4)                               #267.13 c629
        cmpl      %ecx, %edx                                    #265.9 c629
        vprefetche0 (%r13,%r12,4)                               #267.13 c633
        movb      %dl, %dl                                      #268.23 c633
        vprefetch1 (%rdi,%rax,4)                                #268.23 c637
        movb      %dl, %dl                                      #268.23 c637
        vprefetch0 (%rdi,%r12,4)                                #268.23 c641
        movb      %dl, %dl                                      #268.13 c641
        vprefetche1 (%r8,%rax,4)                                #268.13 c645
        movb      %dl, %dl                                      #268.13 c645
        vprefetche0 (%r8,%r12,4)                                #268.13 c649
        movb      %dl, %dl                                      #269.23 c649
        vprefetch1 (%rbx,%rax,4)                                #269.23 c653
        movb      %dl, %dl                                      #269.23 c653
        vprefetch0 (%rbx,%r12,4)                                #269.23 c657
        movb      %dl, %dl                                      #269.13 c657
        vprefetche1 (%r9,%rax,4)                                #269.13 c661
        movb      %dl, %dl                                      #269.13 c661
        vprefetche0 (%r9,%r12,4)                                #269.13 c665
        jb        ..B1.94       # Prob 99%                      #265.9 c665
        jmp       ..B1.98       # Prob 100%                     #265.9 c665
                                # LOE rbx rdi r8 r9 r10 r11 r13 r15 edx ecx esi r14d zmm1 k0
..B1.96:                        # Preds ..B1.92 Latency 25
        lea       32(%rsi), %eax                                #265.9 c1
        vprefetch0 (%r11,%r15,4)                                #265.9 c1
        vprefetch0 (%r11,%rax,4)                                #265.9 c5
        kxnor     %k0, %k0                                      #265.9 c5
        vprefetch0 (%r10,%r15,4)                                #265.9 c9
        movb      %dl, %dl                                      #265.9 c9
        vprefetch0 (%r10,%rax,4)                                #265.9 c13
        movb      %dl, %dl                                      #265.9 c13
        vprefetche0 (%r13,%r15,4)                               #265.9 c17
        movb      %dl, %dl                                      #265.9 c17
        movl      (%rsp), %r15d                                 #265.9 c21
        vprefetche0 (%r13,%rax,4)                               #265.9 c21
        movl      %r15d, %r15d                                  #265.9
        vbroadcasti32x4 .L_2il0floatpacket.227(%rip), %zmm1     #265.9 c25
                                # LOE rbx rdi r8 r9 r10 r11 r13 r15 edx ecx esi r14d zmm1 k0
..B1.97:                        # Preds ..B1.97 ..B1.96 Latency 657
        vloadunpackld (%r11,%r15,4), %zmm9                      #267.23 c1
        lea       16(%r15), %eax                                #267.23 c1
        vmovaps   (%r10,%r15,4), %zmm10                         #267.33 c5
        addl      $32, %edx                                     #265.9 c5
        vpxord    %zmm2, %zmm2, %zmm2                           #267.33 c9
        lea       256(%r15), %r12d                              #267.23 c9
        vloadunpackhd 64(%r11,%r15,4), %zmm9                    #267.23 c13
        vprefetch1 (%r11,%r12,4)                                #267.23 c13
        vfixupnanps .L_2il0floatpacket.228(%rip){1to16}, %zmm10, %zmm2 #267.33 c17
        vgetmantps $0, (%r10,%r15,4), %zmm3                     #267.33 c21
        vfixupnanps .L_2il0floatpacket.228(%rip){1to16}, %zmm9, %zmm2 #267.33 c25
        vrcp23ps  %zmm3, %zmm8                                  #267.33 c29
        vmovaps   %zmm1{aaaa}, %zmm0                            #267.33 c33
        vcmpeqps  %zmm2, %zmm2, %k2                             #267.33 c37
        vfnmadd213ps {rn-sae}, %zmm0, %zmm8, %zmm3              #267.33 c41
        vgetexpps (%r10,%r15,4), %zmm5                          #267.33 c45
        kmov      %k2, %k1                                      #267.33 c45
        vgetexpps %zmm9, %zmm4                                  #267.33 c49
        kandn     %k0, %k1                                      #267.33 c49
        vfmadd213ps {rn-sae}, %zmm8, %zmm3, %zmm8               #267.33 c53
        vgetmantps $0, %zmm9, %zmm7                             #267.33 c57
        vsubps    %zmm5, %zmm4, %zmm6                           #267.33 c61
        vfixupnanps .L_2il0floatpacket.229(%rip){1to16}, %zmm10, %zmm10 #267.33 c65
        vmulps    {rn-sae}, %zmm8, %zmm7, %zmm12{%k2}           #267.33 c69
        vcvtfxpntps2dq $0, %zmm6, %zmm11                        #267.33 c73
        vmulps    {rn-sae}, %zmm10, %zmm9, %zmm12{%k1}          #267.33 c77
        vscaleps  {rn}, %zmm11, %zmm12, %zmm12{%k2}             #267.33 c81
        vmovaps   %zmm12, %zmm13                                #267.33 c85
        vpxord    %zmm14, %zmm14, %zmm14                        #268.33 c89
        vpxord    %zmm26, %zmm26, %zmm26                        #269.33 c93
        vpackstoreld %zmm13, (%r13,%r15,4)                      #267.13 c93
        vpxord    %zmm7, %zmm7, %zmm7                           #267.33 c97
        vpackstorehd %zmm13, 64(%r13,%r15,4)                    #267.13 c97
        vloadunpackld (%rdi,%r15,4), %zmm21                     #268.23 c101
        vmovaps   (%r10,%r15,4), %zmm22                         #268.33 c105
        vloadunpackhd 64(%rdi,%r15,4), %zmm21                   #268.23 c109
        vfixupnanps .L_2il0floatpacket.228(%rip){1to16}, %zmm22, %zmm14 #268.33 c113
        vgetmantps $0, (%r10,%r15,4), %zmm15                    #268.33 c117
        vfixupnanps .L_2il0floatpacket.228(%rip){1to16}, %zmm21, %zmm14 #268.33 c121
        vrcp23ps  %zmm15, %zmm20                                #268.33 c125
        vcmpeqps  %zmm14, %zmm14, %k4                           #268.33 c129
        vfnmadd213ps {rn-sae}, %zmm0, %zmm20, %zmm15            #268.33 c133
        vgetexpps (%r10,%r15,4), %zmm17                         #268.33 c137
        kmov      %k4, %k3                                      #268.33 c137
        vgetexpps %zmm21, %zmm16                                #268.33 c141
        kandn     %k0, %k3                                      #268.33 c141
        vfmadd213ps {rn-sae}, %zmm20, %zmm15, %zmm20            #268.33 c145
        vgetmantps $0, %zmm21, %zmm19                           #268.33 c149
        vsubps    %zmm17, %zmm16, %zmm18                        #268.33 c153
        vfixupnanps .L_2il0floatpacket.229(%rip){1to16}, %zmm22, %zmm22 #268.33 c157
        vmulps    {rn-sae}, %zmm20, %zmm19, %zmm24{%k4}         #268.33 c161
        vcvtfxpntps2dq $0, %zmm18, %zmm23                       #268.33 c165
        vmulps    {rn-sae}, %zmm22, %zmm21, %zmm24{%k3}         #268.33 c169
        vscaleps  {rn}, %zmm23, %zmm24, %zmm24{%k4}             #268.33 c173
        vmovaps   %zmm24, %zmm25                                #268.33 c177
        vpxord    %zmm19, %zmm19, %zmm19                        #268.33 c181
        movb      %al, %al                                      #268.13 c181
        vpackstoreld %zmm25, (%r8,%r15,4)                       #268.13 c185
        vpackstorehd %zmm25, 64(%r8,%r15,4)                     #268.13 c189
        vloadunpackld (%rbx,%r15,4), %zmm2                      #269.23 c193
        vmovaps   (%r10,%r15,4), %zmm3                          #269.33 c197
        vloadunpackhd 64(%rbx,%r15,4), %zmm2                    #269.23 c201
        vfixupnanps .L_2il0floatpacket.228(%rip){1to16}, %zmm3, %zmm26 #269.33 c205
        vfixupnanps .L_2il0floatpacket.228(%rip){1to16}, %zmm2, %zmm26 #269.33 c209
        vgetmantps $0, (%r10,%r15,4), %zmm27                    #269.33 c213
        vcmpeqps  %zmm26, %zmm26, %k6                           #269.33 c217
        vrcp23ps  %zmm27, %zmm26                                #269.33 c221
        vfnmadd213ps {rn-sae}, %zmm0, %zmm26, %zmm27            #269.33 c225
        kmov      %k6, %k5                                      #269.33 c225
        vgetexpps (%r10,%r15,4), %zmm29                         #269.33 c229
        kandn     %k0, %k5                                      #269.33 c229
        vgetexpps %zmm2, %zmm28                                 #269.33 c233
        vfmadd213ps {rn-sae}, %zmm26, %zmm27, %zmm26            #269.33 c237
        vgetmantps $0, %zmm2, %zmm31                            #269.33 c241
        vsubps    %zmm29, %zmm28, %zmm30                        #269.33 c245
        vfixupnanps .L_2il0floatpacket.229(%rip){1to16}, %zmm3, %zmm3 #269.33 c249
        vmulps    {rn-sae}, %zmm26, %zmm31, %zmm5{%k6}          #269.33 c253
        vcvtfxpntps2dq $0, %zmm30, %zmm4                        #269.33 c257
        vmulps    {rn-sae}, %zmm3, %zmm2, %zmm5{%k5}            #269.33 c261
        vscaleps  {rn}, %zmm4, %zmm5, %zmm5{%k6}                #269.33 c265
        vmovaps   %zmm5, %zmm6                                  #269.33 c269
        vpxord    %zmm2, %zmm2, %zmm2                           #269.33 c273
        movb      %dl, %dl                                      #269.13 c273
        vmovaps   %zmm6, (%r9,%r15,4)                           #269.13 c277
        vloadunpackld (%r11,%rax,4), %zmm14                     #267.23 c281
        vmovaps   (%r10,%rax,4), %zmm15                         #267.33 c285
        vloadunpackhd 64(%r11,%rax,4), %zmm14                   #267.23 c289
        vfixupnanps .L_2il0floatpacket.228(%rip){1to16}, %zmm15, %zmm7 #267.33 c293
        vgetmantps $0, (%r10,%rax,4), %zmm8                     #267.33 c297
        vfixupnanps .L_2il0floatpacket.228(%rip){1to16}, %zmm14, %zmm7 #267.33 c301
        vrcp23ps  %zmm8, %zmm13                                 #267.33 c305
        vcmpeqps  %zmm7, %zmm7, %k1                             #267.33 c309
        vfnmadd213ps {rn-sae}, %zmm0, %zmm13, %zmm8             #267.33 c313
        vgetexpps (%r10,%rax,4), %zmm10                         #267.33 c317
        kmov      %k1, %k7                                      #267.33 c317
        vgetexpps %zmm14, %zmm9                                 #267.33 c321
        kandn     %k0, %k7                                      #267.33 c321
        vfmadd213ps {rn-sae}, %zmm13, %zmm8, %zmm13             #267.33 c325
        vgetmantps $0, %zmm14, %zmm12                           #267.33 c329
        vsubps    %zmm10, %zmm9, %zmm11                         #267.33 c333
        vfixupnanps .L_2il0floatpacket.229(%rip){1to16}, %zmm15, %zmm15 #267.33 c337
        vmulps    {rn-sae}, %zmm13, %zmm12, %zmm17{%k1}         #267.33 c341
        vcvtfxpntps2dq $0, %zmm11, %zmm16                       #267.33 c345
        vmulps    {rn-sae}, %zmm15, %zmm14, %zmm17{%k7}         #267.33 c349
        vscaleps  {rn}, %zmm16, %zmm17, %zmm17{%k1}             #267.33 c353
        vmovaps   %zmm17, %zmm18                                #267.33 c357
        nop                                                     #267.13 c361
        vpackstoreld %zmm18, (%r13,%rax,4)                      #267.13 c365
        vpackstorehd %zmm18, 64(%r13,%rax,4)                    #267.13 c369
        vloadunpackld (%rdi,%rax,4), %zmm27                     #268.23 c373
        vmovaps   (%r10,%rax,4), %zmm28                         #268.33 c377
        vloadunpackhd 64(%rdi,%rax,4), %zmm27                   #268.23 c381
        vfixupnanps .L_2il0floatpacket.228(%rip){1to16}, %zmm28, %zmm19 #268.33 c385
        vgetmantps $0, (%r10,%rax,4), %zmm20                    #268.33 c389
        vfixupnanps .L_2il0floatpacket.228(%rip){1to16}, %zmm27, %zmm19 #268.33 c393
        vrcp23ps  %zmm20, %zmm25                                #268.33 c397
        vcmpeqps  %zmm19, %zmm19, %k3                           #268.33 c401
        vfnmadd213ps {rn-sae}, %zmm0, %zmm25, %zmm20            #268.33 c405
        vgetexpps (%r10,%rax,4), %zmm22                         #268.33 c409
        kmov      %k3, %k2                                      #268.33 c409
        vgetexpps %zmm27, %zmm21                                #268.33 c413
        kandn     %k0, %k2                                      #268.33 c413
        vfmadd213ps {rn-sae}, %zmm25, %zmm20, %zmm25            #268.33 c417
        vgetmantps $0, %zmm27, %zmm24                           #268.33 c421
        vsubps    %zmm22, %zmm21, %zmm23                        #268.33 c425
        vfixupnanps .L_2il0floatpacket.229(%rip){1to16}, %zmm28, %zmm28 #268.33 c429
        vmulps    {rn-sae}, %zmm25, %zmm24, %zmm30{%k3}         #268.33 c433
        vcvtfxpntps2dq $0, %zmm23, %zmm29                       #268.33 c437
        vmulps    {rn-sae}, %zmm28, %zmm27, %zmm30{%k2}         #268.33 c441
        vscaleps  {rn}, %zmm29, %zmm30, %zmm30{%k3}             #268.33 c445
        vmovaps   %zmm30, %zmm31                                #268.33 c449
        nop                                                     #268.13 c453
        vpackstoreld %zmm31, (%r8,%rax,4)                       #268.13 c457
        vpackstorehd %zmm31, 64(%r8,%rax,4)                     #268.13 c461
        vloadunpackld (%rbx,%rax,4), %zmm5                      #269.23 c465
        vmovaps   (%r10,%rax,4), %zmm6                          #269.33 c469
        vgetmantps $0, (%r10,%rax,4), %zmm3                     #269.33 c473
        vloadunpackhd 64(%rbx,%rax,4), %zmm5                    #269.23 c477
        vfixupnanps .L_2il0floatpacket.228(%rip){1to16}, %zmm6, %zmm2 #269.33 c481
        vrcp23ps  %zmm3, %zmm4                                  #269.33 c485
        vfixupnanps .L_2il0floatpacket.228(%rip){1to16}, %zmm5, %zmm2 #269.33 c489
        vfnmadd213ps {rn-sae}, %zmm0, %zmm4, %zmm3              #269.33 c493
        vcmpeqps  %zmm2, %zmm2, %k5                             #269.33 c497
        vfmadd213ps {rn-sae}, %zmm4, %zmm3, %zmm4               #269.33 c501
        vgetexpps (%r10,%rax,4), %zmm3                          #269.33 c505
        kmov      %k5, %k4                                      #269.33 c505
        vgetexpps %zmm5, %zmm0                                  #269.33 c509
        kandn     %k0, %k4                                      #269.33 c509
        vgetmantps $0, %zmm5, %zmm2                             #269.33 c513
        vsubps    %zmm3, %zmm0, %zmm0                           #269.33 c517
        vfixupnanps .L_2il0floatpacket.229(%rip){1to16}, %zmm6, %zmm6 #269.33 c521
        vmulps    {rn-sae}, %zmm4, %zmm2, %zmm8{%k5}            #269.33 c525
        vcvtfxpntps2dq $0, %zmm0, %zmm7                         #269.33 c529
        vmulps    {rn-sae}, %zmm6, %zmm5, %zmm8{%k4}            #269.33 c533
        vscaleps  {rn}, %zmm7, %zmm8, %zmm8{%k5}                #269.33 c537
        vmovaps   %zmm8, %zmm9                                  #269.33 c541
        nop                                                     #269.13 c545
        vmovaps   %zmm9, (%r9,%rax,4)                           #269.13 c549
        lea       64(%r15), %eax                                #267.23 c549
        vprefetch0 (%r11,%rax,4)                                #267.23 c553
        movb      %dl, %dl                                      #267.33 c553
        vprefetch1 (%r10,%r12,4)                                #267.33 c557
        movb      %dl, %dl                                      #267.33 c557
        vprefetch0 (%r10,%rax,4)                                #267.33 c561
        movb      %dl, %dl                                      #267.13 c561
        vprefetche1 (%r13,%r12,4)                               #267.13 c565
        movb      %dl, %dl                                      #267.13 c565
        vprefetche0 (%r13,%rax,4)                               #267.13 c569
        movb      %dl, %dl                                      #268.23 c569
        vprefetch1 (%rdi,%r12,4)                                #268.23 c573
        movb      %dl, %dl                                      #268.23 c573
        vprefetch0 (%rdi,%rax,4)                                #268.23 c577
        movb      %dl, %dl                                      #268.13 c577
        vprefetche1 (%r8,%r12,4)                                #268.13 c581
        movb      %dl, %dl                                      #268.13 c581
        vprefetche0 (%r8,%rax,4)                                #268.13 c585
        movb      %dl, %dl                                      #269.23 c585
        vprefetch1 (%rbx,%r12,4)                                #269.23 c589
        movb      %dl, %dl                                      #269.23 c589
        vprefetch0 (%rbx,%rax,4)                                #269.23 c593
        movb      %dl, %dl                                      #269.13 c593
        vprefetche1 (%r9,%r12,4)                                #269.13 c597
        lea       80(%r15), %r12d                               #267.23 c597
        vprefetche0 (%r9,%rax,4)                                #269.13 c601
        lea       272(%r15), %eax                               #267.23 c601
        addl      $32, %r15d                                    #265.9 c605
        vprefetch1 (%r11,%rax,4)                                #267.23 c605
        movl      %r15d, %r15d                                  #265.9
        vprefetch0 (%r11,%r12,4)                                #267.23 c609
        movb      %dl, %dl                                      #267.33 c609
        vprefetch1 (%r10,%rax,4)                                #267.33 c613
        movb      %dl, %dl                                      #267.33 c613
        vprefetch0 (%r10,%r12,4)                                #267.33 c617
        movb      %bl, %bl                                      #267.13 c617
        vprefetche1 (%r13,%rax,4)                               #267.13 c621
        cmpl      %ecx, %edx                                    #265.9 c621
        vprefetche0 (%r13,%r12,4)                               #267.13 c625
        movb      %dl, %dl                                      #268.23 c625
        vprefetch1 (%rdi,%rax,4)                                #268.23 c629
        movb      %dl, %dl                                      #268.23 c629
        vprefetch0 (%rdi,%r12,4)                                #268.23 c633
        movb      %dl, %dl                                      #268.13 c633
        vprefetche1 (%r8,%rax,4)                                #268.13 c637
        movb      %dl, %dl                                      #268.13 c637
        vprefetche0 (%r8,%r12,4)                                #268.13 c641
        movb      %dl, %dl                                      #269.23 c641
        vprefetch1 (%rbx,%rax,4)                                #269.23 c645
        movb      %dl, %dl                                      #269.23 c645
        vprefetch0 (%rbx,%r12,4)                                #269.23 c649
        movb      %dl, %dl                                      #269.13 c649
        vprefetche1 (%r9,%rax,4)                                #269.13 c653
        movb      %dl, %dl                                      #269.13 c653
        vprefetche0 (%r9,%r12,4)                                #269.13 c657
        jb        ..B1.97       # Prob 99%                      #265.9 c657
                                # LOE rbx rdi r8 r9 r10 r11 r13 r15 edx ecx esi r14d zmm1 k0
..B1.98:                        # Preds ..B1.94 ..B1.97 Latency 1
        xorl      %r12d, %r12d                                  # c1
                                # LOE rbx rdi r8 r9 r10 r11 r13 ecx esi r12d r14d
..B1.99:                        # Preds ..B1.91 ..B1.98 Latency 5
        lea       1(%rcx), %eax                                 #265.9 c1
        cmpl      %eax, %r14d                                   #265.9 c5
        jb        ..B1.105      # Prob 50%                      #265.9 c5
                                # LOE rbx rdi r8 r9 r10 r11 r13 ecx esi r12d r14d
..B1.100:                       # Preds ..B1.99 Latency 25
        subl      %ecx, %r14d                                   #265.9 c1
        addl      %ecx, %esi                                    #267.23 c1
        movl      %r14d, 40(%rsp)                               #265.9 c5
        kxnor     %k0, %k0                                      #267.23 c5
        vpbroadcastd .L_2il0floatpacket.223(%rip), %zmm6        #265.9 c9
        vmovaps   .L_2il0floatpacket.224(%rip), %zmm5           #265.9 c13
        vpxord    %zmm4, %zmm4, %zmm4                           #267.23 c17
        vpbroadcastd 40(%rsp), %zmm3                            #265.9 c21
        vbroadcasti32x4 .L_2il0floatpacket.227(%rip), %zmm2     #267.23 c25
                                # LOE rbx rdi r8 r9 r10 r11 r13 esi r12d r14d zmm2 zmm3 zmm4 zmm5 zmm6 k0
..B1.101:                       # Preds ..B1.103 ..B1.100 Latency 17
        vpcmpud   $6, %zmm3, %zmm5, %k1                         #265.9 c1
        movl      %esi, %eax                                    #267.23 c1
        nop                                                     #265.9 c5
        knot      %k1, %k1                                      #265.9 c9
        knot      %k1, %k2                                      #265.9 c13
        jknzd     ..B1.143, %k2 # Prob 9%                       #265.9 c17
                                # LOE rax rbx rdi r8 r9 r10 r11 r13 esi r12d r14d zmm2 zmm3 zmm4 zmm5 zmm6 k0 k1
..B1.102:                       # Preds ..B1.101 Latency 281
        vloadunpackld (%r11,%rax,4), %zmm13                     #267.23 c1
        vmovaps   (%r10,%rax,4), %zmm14                         #267.33 c5
        vmovaps   %zmm4, %zmm1                                  #267.33 c9
        vloadunpackhd 64(%r11,%rax,4), %zmm13                   #267.23 c13
        vfixupnanps .L_2il0floatpacket.228(%rip){1to16}, %zmm14, %zmm1 #267.33 c17
        vgetmantps $0, (%r10,%rax,4), %zmm7                     #267.33 c21
        vfixupnanps .L_2il0floatpacket.228(%rip){1to16}, %zmm13, %zmm1 #267.33 c25
        vrcp23ps  %zmm7, %zmm12                                 #267.33 c29
        vmovaps   %zmm2{aaaa}, %zmm0                            #267.33 c33
        vcmpeqps  %zmm1, %zmm1, %k2                             #267.33 c37
        vfnmadd213ps {rn-sae}, %zmm0, %zmm12, %zmm7             #267.33 c41
        vgetexpps (%r10,%rax,4), %zmm9                          #267.33 c45
        kmov      %k2, %k1                                      #267.33 c45
        vgetexpps %zmm13, %zmm8                                 #267.33 c49
        kandn     %k0, %k1                                      #267.33 c49
        vfmadd213ps {rn-sae}, %zmm12, %zmm7, %zmm12             #267.33 c53
        vgetmantps $0, %zmm13, %zmm11                           #267.33 c57
        vsubps    %zmm9, %zmm8, %zmm10                          #267.33 c61
        vfixupnanps .L_2il0floatpacket.229(%rip){1to16}, %zmm14, %zmm14 #267.33 c65
        vmulps    {rn-sae}, %zmm12, %zmm11, %zmm16{%k2}         #267.33 c69
        vcvtfxpntps2dq $0, %zmm10, %zmm15                       #267.33 c73
        vmulps    {rn-sae}, %zmm14, %zmm13, %zmm16{%k1}         #267.33 c77
        vscaleps  {rn}, %zmm15, %zmm16, %zmm16{%k2}             #267.33 c81
        vmovaps   %zmm16, %zmm17                                #267.33 c85
        vmovaps   %zmm4, %zmm18                                 #268.33 c89
        vmovaps   %zmm4, %zmm30                                 #269.33 c93
        vpackstoreld %zmm17, (%r13,%rax,4)                      #267.13 c93
        vpackstorehd %zmm17, 64(%r13,%rax,4)                    #267.13 c97
        vloadunpackld (%rdi,%rax,4), %zmm25                     #268.23 c101
        vmovaps   (%r10,%rax,4), %zmm26                         #268.33 c105
        vloadunpackhd 64(%rdi,%rax,4), %zmm25                   #268.23 c109
        vfixupnanps .L_2il0floatpacket.228(%rip){1to16}, %zmm26, %zmm18 #268.33 c113
        vgetmantps $0, (%r10,%rax,4), %zmm19                    #268.33 c117
        vfixupnanps .L_2il0floatpacket.228(%rip){1to16}, %zmm25, %zmm18 #268.33 c121
        vrcp23ps  %zmm19, %zmm24                                #268.33 c125
        vcmpeqps  %zmm18, %zmm18, %k4                           #268.33 c129
        vfnmadd213ps {rn-sae}, %zmm0, %zmm24, %zmm19            #268.33 c133
        vgetexpps (%r10,%rax,4), %zmm21                         #268.33 c137
        kmov      %k4, %k3                                      #268.33 c137
        vgetexpps %zmm25, %zmm20                                #268.33 c141
        kandn     %k0, %k3                                      #268.33 c141
        vfmadd213ps {rn-sae}, %zmm24, %zmm19, %zmm24            #268.33 c145
        vgetmantps $0, %zmm25, %zmm23                           #268.33 c149
        vsubps    %zmm21, %zmm20, %zmm22                        #268.33 c153
        vfixupnanps .L_2il0floatpacket.229(%rip){1to16}, %zmm26, %zmm26 #268.33 c157
        vmulps    {rn-sae}, %zmm24, %zmm23, %zmm28{%k4}         #268.33 c161
        vcvtfxpntps2dq $0, %zmm22, %zmm27                       #268.33 c165
        vmulps    {rn-sae}, %zmm26, %zmm25, %zmm28{%k3}         #268.33 c169
        vscaleps  {rn}, %zmm27, %zmm28, %zmm28{%k4}             #268.33 c173
        vmovaps   %zmm28, %zmm29                                #268.33 c177
        nop                                                     #268.13 c181
        vpackstoreld %zmm29, (%r8,%rax,4)                       #268.13 c185
        vpackstorehd %zmm29, 64(%r8,%rax,4)                     #268.13 c189
        vloadunpackld (%rbx,%rax,4), %zmm8                      #269.23 c193
        vmovaps   (%r10,%rax,4), %zmm9                          #269.33 c197
        vgetmantps $0, (%r10,%rax,4), %zmm31                    #269.33 c201
        vloadunpackhd 64(%rbx,%rax,4), %zmm8                    #269.23 c205
        vfixupnanps .L_2il0floatpacket.228(%rip){1to16}, %zmm9, %zmm30 #269.33 c209
        vrcp23ps  %zmm31, %zmm7                                 #269.33 c213
        vfixupnanps .L_2il0floatpacket.228(%rip){1to16}, %zmm8, %zmm30 #269.33 c217
        vfnmadd213ps {rn-sae}, %zmm0, %zmm7, %zmm31             #269.33 c221
        vcmpeqps  %zmm30, %zmm30, %k6                           #269.33 c225
        vfmadd213ps {rn-sae}, %zmm7, %zmm31, %zmm7              #269.33 c229
        vgetexpps (%r10,%rax,4), %zmm31                         #269.33 c233
        kmov      %k6, %k5                                      #269.33 c233
        vgetexpps %zmm8, %zmm0                                  #269.33 c237
        kandn     %k0, %k5                                      #269.33 c237
        vgetmantps $0, %zmm8, %zmm1                             #269.33 c241
        vsubps    %zmm31, %zmm0, %zmm30                         #269.33 c245
        vfixupnanps .L_2il0floatpacket.229(%rip){1to16}, %zmm9, %zmm9 #269.33 c249
        vmulps    {rn-sae}, %zmm7, %zmm1, %zmm11{%k6}           #269.33 c253
        vcvtfxpntps2dq $0, %zmm30, %zmm10                       #269.33 c257
        vmulps    {rn-sae}, %zmm9, %zmm8, %zmm11{%k5}           #269.33 c261
        vscaleps  {rn}, %zmm10, %zmm11, %zmm11{%k6}             #269.33 c265
        vmovaps   %zmm11, %zmm12                                #269.33 c269
        nop                                                     #269.13 c273
        vpackstoreld %zmm12, (%r9,%rax,4)                       #269.13 c277
        vpackstorehd %zmm12, 64(%r9,%rax,4)                     #269.13 c281
        movb      %dl, %dl                                      #269.13 c281
                                # LOE rbx rdi r8 r9 r10 r11 r13 esi r12d r14d zmm2 zmm3 zmm4 zmm5 zmm6 k0
..B1.103:                       # Preds ..B1.143 ..B1.102 Latency 9
        addl      $16, %r12d                                    #265.9 c1
        addl      $16, %esi                                     #265.9 c1
        vpaddd    %zmm6, %zmm5, %zmm5                           #265.9 c5
        cmpl      %r14d, %r12d                                  #265.9 c5
        jb        ..B1.101      # Prob 99%                      #265.9 c9
                                # LOE rbx rdi r8 r9 r10 r11 r13 esi r12d r14d zmm2 zmm3 zmm4 zmm5 zmm6 k0
..B1.105:                       # Preds ..B1.103 ..B1.90 ..B1.99 ..B1.83 ..B1.84
                                #       Latency 9
        lea       .2.5_2_kmpc_loc_struct_pack.102(%rip), %rdi   #262.9 c1
        movl      16(%rsp), %esi                                #262.9 c1
        xorl      %eax, %eax                                    #262.9 c5
..___tag_value__Z18particles_simulate14t_particles_DA.182:      #262.9
        call      __kmpc_for_static_fini@PLT                    #262.9
..___tag_value__Z18particles_simulate14t_particles_DA.183:      #
                                # LOE
..B1.106:                       # Preds ..B1.105 Latency 13
        movq      48(%rsp), %r15                                #262.9 c1
..___tag_value__Z18particles_simulate14t_particles_DA.184:      #
        movq      56(%rsp), %r14                                #262.9 c1
..___tag_value__Z18particles_simulate14t_particles_DA.185:      #
        movq      64(%rsp), %r13                                #262.9 c5
..___tag_value__Z18particles_simulate14t_particles_DA.186:      #
        movq      72(%rsp), %r12                                #262.9 c5
..___tag_value__Z18particles_simulate14t_particles_DA.187:      #
        movq      80(%rsp), %rbx                                #262.9 c9
..___tag_value__Z18particles_simulate14t_particles_DA.188:      #
        movq      %rbp, %rsp                                    #262.9 c13
        popq      %rbp                                          #262.9
..___tag_value__Z18particles_simulate14t_particles_DA.189:      #
        ret                                                     #262.9
..___tag_value__Z18particles_simulate14t_particles_DA.191:      #
                                # LOE
L__Z18particles_simulate14t_particles_DA_224__par_loop1_2.67:
# parameter 1: %rdi
# parameter 2: %rsi
# parameter 3: %rdx
# parameter 4: %rcx
# parameter 5: %r8
# parameter 6: %r9
# parameter 7: 16 + %rbp
# parameter 8: 24 + %rbp
# parameter 9: 32 + %rbp
# parameter 10: 40 + %rbp
..B1.107:                       # Preds ..B1.0 Latency 57
        pushq     %rbp                                          #224.9
..___tag_value__Z18particles_simulate14t_particles_DA.193:      #
        movq      %rsp, %rbp                                    #224.9
..___tag_value__Z18particles_simulate14t_particles_DA.194:      #
        andq      $-64, %rsp                                    #224.9
        subq      $128, %rsp                                    #224.9 c1
        movl      $1, %eax                                      #224.9 c1
        movq      %r14, 56(%rsp)                                #224.9 c5
..___tag_value__Z18particles_simulate14t_particles_DA.196:      #
        xorl      %r14d, %r14d                                  #224.9 c5
        movq      %rbx, 80(%rsp)                                #224.9 c9
        movq      %r15, 48(%rsp)                                #224.9 c9
        movq      %r13, 64(%rsp)                                #224.9 c13
..___tag_value__Z18particles_simulate14t_particles_DA.197:      #
        movq      %rdx, %r13                                    #224.9 c13
        movq      %r12, 72(%rsp)                                #224.9 c17
        movl      $34, %edx                                     #224.9 c17
..___tag_value__Z18particles_simulate14t_particles_DA.200:      #
        movl      (%rdi), %r15d                                 #224.9 c21
        movl      %r14d, 8(%rsp)                                #224.9 c21
        movl      $1105919, 12(%rsp)                            #224.9 c25
        movl      %r14d, 16(%rsp)                               #224.9 c29
        lea       .2.5_2_kmpc_loc_struct_pack.69(%rip), %rdi    #224.9 c29
        movl      %eax, 20(%rsp)                                #224.9 c33
        addq      $-32, %rsp                                    #224.9 c33
        lea       52(%rsp), %r11                                #224.9 c37
        movl      %r15d, %esi                                   #224.9 c37
        movq      %r11, (%rsp)                                  #224.9 c41
        lea       48(%rsp), %rcx                                #224.9 c41
        movl      %eax, 8(%rsp)                                 #224.9 c45
        lea       40(%rsp), %r8                                 #224.9 c45
        movl      %eax, 16(%rsp)                                #224.9 c49
        lea       44(%rsp), %r9                                 #224.9 c49
        xorl      %eax, %eax                                    #224.9 c53
..___tag_value__Z18particles_simulate14t_particles_DA.201:      #224.9
        call      __kmpc_for_static_init_4u@PLT                 #224.9
..___tag_value__Z18particles_simulate14t_particles_DA.202:      #
                                # LOE r13 r14d r15d
..B1.165:                       # Preds ..B1.107 Latency 1
        addq      $32, %rsp                                     #224.9 c1
                                # LOE r13 r14d r15d
..B1.108:                       # Preds ..B1.165 Latency 9
        movl      8(%rsp), %eax                                 #224.9 c1
        movl      12(%rsp), %edi                                #224.9 c1
        cmpl      $1105919, 8(%rsp)                             #224.9 c5
        ja        ..B1.114      # Prob 50%                      #224.9 c9
                                # LOE rax r13 edi r14d r15d
..B1.109:                       # Preds ..B1.108 Latency 49
        movq      56(%r13), %rsi                                #253.17 c1
        movq      64(%r13), %rdx                                #254.17 c1
        movq      72(%r13), %r8                                 #255.17 c5
        cmpl      $1105919, %edi                                #224.9 c5
        jb        ..L203        # Prob 50%                      #224.9 c9
        movl      $1105919, %edi                                #224.9
..L203:                                                         #
        vprefetche0 (%r8,%rax,4)                                #226.9 c9
        lea       1(%rax), %r11d                                #226.9 c13
        vprefetche0 (%r8,%r11,4)                                #226.9 c13
        movq      (%r13), %r10                                  #239.22 c17
        vprefetche0 (%rdx,%rax,4)                               #226.9 c17
        vprefetche0 (%rdx,%r11,4)                               #226.9 c21
        subl      %eax, %edi                                    #224.9 c21
        vprefetche0 (%rsi,%rax,4)                               #226.9 c25
        movl      %r14d, %r9d                                   #226.9 c25
        vprefetche0 (%rsi,%r11,4)                               #226.9 c29
        movl      $1, %r11d                                     #224.9 c29
        vbroadcastss .L_2il0floatpacket.222(%rip), %zmm17       #253.63 c33
        movq      8(%r13), %rbx                                 #240.22 c37
        movq      16(%r13), %r12                                #241.22 c37
        movq      48(%r13), %rcx                                #253.35 c41
        incl      %edi                                          #224.9 c41
        kmov      %r11d, %k4                                    #224.9 c45
        movl      %r15d, (%rsp)                                 #224.9 c45
        movq      %r10, %r13                                    #224.9 c49
        movl      %r14d, %r10d                                  #224.9 c49
                                # LOE rdx rcx rbx rsi r8 r12 r13 eax edi r9d r10d zmm17 zmm21 zmm22 zmm23 k4
..B1.110:                       # Preds ..B1.112 ..B1.109 Latency 41
        movl      %eax, %r11d                                   #239.35 c1
        vprefetch0 (%r13)                                       #236.13 c1
        vbroadcastss (%r12,%r11,4), %zmm20                      #241.35 c5
        vprefetch0 64(%r13)                                     #236.13 c5
        vbroadcastss (%rbx,%r11,4), %zmm19                      #240.35 c9
        vprefetch0 (%rbx)                                       #236.13 c9
        vbroadcastss (%r13,%r11,4), %zmm25                      #239.35 c13
        vprefetch0 64(%rbx)                                     #236.13 c13
        vmulps    (%rcx,%r11,4){1to16}, %zmm17, %zmm18          #253.68 c17
        vprefetch0 (%r12)                                       #236.13 c17
        xorl      %r15d, %r15d                                  #236.13 c21
        vprefetch0 64(%r12)                                     #236.13 c21
        movl      %r10d, %r14d                                  #236.13 c25
        movq      %r11, 112(%rsp)                               #236.13 c25
        movl      %edi, 104(%rsp)                               #236.13 c29
        movl      %r9d, 96(%rsp)                                #236.13 c29
        movq      %r8, 88(%rsp)                                 #236.13 c33
        movq      %rdx, 40(%rsp)                                #236.13 c33
        movq      %rcx, 120(%rsp)                               #236.13 c37
        movq      %rsi, 32(%rsp)                                #236.13 c37
        movl      %eax, 24(%rsp)                                #236.13 c41
                                # LOE rbx r12 r13 r15 r14d zmm17 zmm18 zmm19 zmm20 zmm21 zmm22 zmm23 zmm25 k4
..B1.111:                       # Preds ..B1.166 ..B1.110 Latency 29
        vsubrps   (%r13,%r15,4), %zmm25, %zmm26                 #239.35 c1
        vbroadcastss .L_2il0floatpacket.221(%rip), %zmm0        #244.39 c5
        vsubrps   (%rbx,%r15,4), %zmm19, %zmm16                 #240.35 c9
        vfmadd231ps %zmm26, %zmm26, %zmm0                       #244.39 c13
        vsubrps   (%r12,%r15,4), %zmm20, %zmm24                 #241.35 c17
        vfmadd231ps %zmm16, %zmm16, %zmm0                       #244.47 c21
        vfmadd231ps %zmm24, %zmm24, %zmm0                       #244.52 c25
        call      __svml_invsqrtf16@PLT                         #247.35 c29
                                # LOE rbx r12 r13 r15 r14d zmm0 zmm16 zmm17 zmm18 zmm19 zmm20 zmm21 zmm22 zmm23 zmm24 zmm25 zmm26 k4
..B1.166:                       # Preds ..B1.111 Latency 45
        vmulps    %zmm0, %zmm0, %zmm1                           #250.40 c1
        vprefetch1 512(%r13,%r15,4)                             #239.22 c1
        vmulps    %zmm0, %zmm1, %zmm4                           #250.51 c5
        vprefetch0 128(%r13,%r15,4)                             #239.22 c5
        vmulps    %zmm26, %zmm18, %zmm26                        #253.49 c9
        vprefetch1 512(%rbx,%r15,4)                             #240.22 c9
        vmulps    %zmm16, %zmm18, %zmm16                        #254.49 c13
        vprefetch0 128(%rbx,%r15,4)                             #240.22 c13
        vmulps    %zmm24, %zmm18, %zmm24                        #255.49 c17
        vprefetch1 512(%r12,%r15,4)                             #241.22 c17
        vmulps    %zmm4, %zmm26, %zmm2                          #253.63 c21
        vprefetch0 128(%r12,%r15,4)                             #241.22 c21
        vmulps    %zmm4, %zmm16, %zmm3                          #254.63 c25
        movq      120(%rsp), %rax                               #253.17 c25
        vmulps    %zmm4, %zmm24, %zmm5                          #255.63 c29
        vprefetch1 512(%rax,%r15,4)                             #253.49 c29
        addl      $16, %r14d                                    #236.13 c33
        vprefetch0 128(%rax,%r15,4)                             #253.49 c33
        vfmadd231ps (%rax,%r15,4), %zmm2, %zmm21                #253.17 c37
        cmpl      $1105920, %r14d                               #236.13 c37
        vfmadd231ps (%rax,%r15,4), %zmm3, %zmm22                #254.17 c41
        vfmadd231ps (%rax,%r15,4), %zmm5, %zmm23                #255.17 c45
        movl      %r14d, %r15d                                  #236.13
        jb        ..B1.111      # Prob 99%                      #236.13 c45
                                # LOE rbx r12 r13 r15 r14d zmm17 zmm18 zmm19 zmm20 zmm21 zmm22 zmm23 zmm25 k4
..B1.112:                       # Preds ..B1.166 Latency 57
        vpshufd   $147, %zmm22, %zmm22                          #254.17 c1
        movq      112(%rsp), %r11                               # c1
        vpshufd   $147, %zmm23, %zmm23                          #255.17 c5
        movq      88(%rsp), %r8                                 # c5
        vpshufd   $147, %zmm21, %zmm0                           #253.17 c9
        movq      40(%rsp), %rdx                                # c9
        vpermf32x4 $147, %zmm23, %zmm23                         #255.17 c13
        movq      32(%rsp), %rsi                                # c13
        vpermf32x4 $147, %zmm22, %zmm22                         #254.17 c17
        movl      24(%rsp), %eax                                # c17
        vpermf32x4 $147, %zmm0, %zmm21                          #253.17 c21
        vpackstorelps %zmm23, (%r8,%r11,4){%k4}                 #255.17 c21
        movl      96(%rsp), %r9d                                # c25
        vpackstorelps %zmm22, (%rdx,%r11,4){%k4}                #254.17 c25
        movl      104(%rsp), %edi                               # c29
        vpackstorelps %zmm21, (%rsi,%r11,4){%k4}                #253.17 c29
        incl      %r9d                                          #226.9 c33
        lea       5(%rax), %r11d                                #255.17 c33
        lea       2(%rax), %r15d                                #255.17 c37
        vprefetche1 (%r8,%r11,4)                                #255.17 c37
        incl      %eax                                          #226.9 c41
        vprefetche0 (%r8,%r15,4)                                #255.17 c41
        movq      120(%rsp), %rcx                               # c45
        vprefetche1 (%rdx,%r11,4)                               #254.17 c45
        xorl      %r10d, %r10d                                  # c49
        vprefetche0 (%rdx,%r15,4)                               #254.17 c49
        vprefetche1 (%rsi,%r11,4)                               #253.17 c53
        cmpl      %edi, %r9d                                    #226.9 c53
        vprefetche0 (%rsi,%r15,4)                               #253.17 c57
        jb        ..B1.110      # Prob 99%                      #226.9 c57
                                # LOE rdx rcx rbx rsi r8 r12 r13 eax edi r9d r10d zmm17 zmm21 zmm22 zmm23 k4
..B1.113:                       # Preds ..B1.112 Latency 1
        movl      (%rsp), %r15d                                 # c1
                                # LOE r15d
..B1.114:                       # Preds ..B1.108 ..B1.113 Latency 9
        lea       .2.5_2_kmpc_loc_struct_pack.69(%rip), %rdi    #224.9 c1
        movl      %r15d, %esi                                   #224.9 c1
        xorl      %eax, %eax                                    #224.9 c5
..___tag_value__Z18particles_simulate14t_particles_DA.204:      #224.9
        call      __kmpc_for_static_fini@PLT                    #224.9
..___tag_value__Z18particles_simulate14t_particles_DA.205:      #
                                # LOE
..B1.115:                       # Preds ..B1.114 Latency 13
        movq      48(%rsp), %r15                                #224.9 c1
..___tag_value__Z18particles_simulate14t_particles_DA.206:      #
        movq      56(%rsp), %r14                                #224.9 c1
..___tag_value__Z18particles_simulate14t_particles_DA.207:      #
        movq      64(%rsp), %r13                                #224.9 c5
..___tag_value__Z18particles_simulate14t_particles_DA.208:      #
        movq      72(%rsp), %r12                                #224.9 c5
..___tag_value__Z18particles_simulate14t_particles_DA.209:      #
        movq      80(%rsp), %rbx                                #224.9 c9
..___tag_value__Z18particles_simulate14t_particles_DA.210:      #
        movq      %rbp, %rsp                                    #224.9 c13
        popq      %rbp                                          #224.9
..___tag_value__Z18particles_simulate14t_particles_DA.211:      #
        ret                                                     #224.9
..___tag_value__Z18particles_simulate14t_particles_DA.213:      #
                                # LOE
L__Z18particles_simulate14t_particles_DA_213__par_loop0_2.45:
# parameter 1: %rdi
# parameter 2: %rsi
# parameter 3: %rdx
# parameter 4: %rcx
# parameter 5: %r8
# parameter 6: %r9
..B1.116:                       # Preds ..B1.0 Latency 61
        pushq     %rbp                                          #213.9
..___tag_value__Z18particles_simulate14t_particles_DA.215:      #
        movq      %rsp, %rbp                                    #213.9
..___tag_value__Z18particles_simulate14t_particles_DA.216:      #
        andq      $-64, %rsp                                    #213.9
        subq      $128, %rsp                                    #213.9 c1
        movl      $1, %r11d                                     #213.9 c1
        movq      %r12, 72(%rsp)                                #213.9 c5
..___tag_value__Z18particles_simulate14t_particles_DA.218:      #
        xorl      %r12d, %r12d                                  #213.9 c5
        movq      %rbx, 80(%rsp)                                #213.9 c9
..___tag_value__Z18particles_simulate14t_particles_DA.219:      #
        movq      %rdx, %rbx                                    #213.9 c9
        movq      %r15, 48(%rsp)                                #213.9 c13
        movl      $34, %edx                                     #213.9 c13
        movq      %r14, 56(%rsp)                                #213.9 c17
        xorl      %eax, %eax                                    #213.9 c17
        movq      %r13, 64(%rsp)                                #213.9 c21
..___tag_value__Z18particles_simulate14t_particles_DA.220:      #
        movl      (%rdi), %r13d                                 #213.9 c21
        movl      $1105919, 4(%rsp)                             #213.9 c25
        movl      %r12d, (%rsp)                                 #213.9 c29
        lea       .2.5_2_kmpc_loc_struct_pack.47(%rip), %rdi    #213.9 c29
        movl      %r12d, 8(%rsp)                                #213.9 c33
        movl      %r13d, %esi                                   #213.9 c33
        movl      %r11d, 12(%rsp)                               #213.9 c37
        addq      $-32, %rsp                                    #213.9 c37
        lea       44(%rsp), %r10                                #213.9 c41
        lea       40(%rsp), %rcx                                #213.9 c41
        lea       32(%rsp), %r8                                 #213.9 c45
        lea       36(%rsp), %r9                                 #213.9 c45
        movq      %r10, (%rsp)                                  #213.9 c49
        movl      %r11d, 8(%rsp)                                #213.9 c53
        movl      %r11d, 16(%rsp)                               #213.9 c57
..___tag_value__Z18particles_simulate14t_particles_DA.223:      #213.9
        call      __kmpc_for_static_init_4u@PLT                 #213.9
..___tag_value__Z18particles_simulate14t_particles_DA.224:      #
                                # LOE rbx r12d r13d
..B1.167:                       # Preds ..B1.116 Latency 1
        addq      $32, %rsp                                     #213.9 c1
                                # LOE rbx r12d r13d
..B1.117:                       # Preds ..B1.167 Latency 9
        movl      (%rsp), %edi                                  #213.9 c1
        movl      4(%rsp), %r9d                                 #213.9 c1
        cmpl      $1105919, (%rsp)                              #213.9 c5
        ja        ..B1.139      # Prob 50%                      #213.9 c9
                                # LOE rbx edi r9d r12d r13d
..B1.118:                       # Preds ..B1.117 Latency 9
        cmpl      $1105919, %r9d                                #213.9 c1
        jb        ..L225        # Prob 50%                      #213.9 c5
        movl      $1105919, %r9d                                #213.9
..L225:                                                         #
        cmpl      %edi, %r9d                                    #216.33 c9
        jb        ..B1.139      # Prob 50%                      #216.33 c9
                                # LOE rbx edi r9d r12d r13d
..B1.119:                       # Preds ..B1.118 Latency 17
        movq      72(%rbx), %rsi                                #220.13 c1
        movl      %edi, %ecx                                    #220.13 c1
        lea       (%rsi,%rcx,4), %rdx                           #220.13 c5
        subl      %edi, %r9d                                    #216.9 c5
        andq      $63, %rdx                                     #216.9 c9
        incl      %r9d                                          #216.9 c9
        movq      56(%rbx), %r10                                #218.13 c13
        movq      64(%rbx), %r8                                 #219.13 c13
        testl     %edx, %edx                                    #216.9 c17
        je        ..B1.121      # Prob 50%                      #216.9 c17
                                # LOE rcx rsi r8 r10 edx edi r9d r12d r13d
..B1.120:                       # Preds ..B1.119 Latency 17
        negl      %edx                                          #216.9 c1
        addl      $64, %edx                                     #216.9 c5
        shrl      $2, %edx                                      #216.9 c9
        cmpl      %edx, %r9d                                    #216.9 c13
        jge       ..L226        # Prob 50%                      #216.9 c17
        movl      %r9d, %edx                                    #216.9
..L226:                                                         #
                                # LOE rcx rsi r8 r10 edx edi r9d r12d r13d
..B1.121:                       # Preds ..B1.120 ..B1.119 Latency 21
        movl      %r9d, %ebx                                    #216.9 c1
        subl      %edx, %ebx                                    #216.9 c5
        andl      $63, %ebx                                     #216.9 c9
        negl      %ebx                                          #216.9 c13
        addl      %r9d, %ebx                                    #216.9 c17
        cmpl      $1, %edx                                      #216.9 c21
        jb        ..B1.125      # Prob 50%                      #216.9 c21
                                # LOE rcx rsi r8 r10 edx ebx edi r9d r12d r13d
..B1.122:                       # Preds ..B1.121 Latency 21
        movl      %edx, 40(%rsp)                                #216.9 c1
        movl      %r12d, %eax                                   #216.9 c1
        vpbroadcastd .L_2il0floatpacket.223(%rip), %zmm4        #216.9 c5
        vmovaps   .L_2il0floatpacket.224(%rip), %zmm3           #216.9 c9
        vpxord    %zmm2, %zmm2, %zmm2                           #218.23 c13
        vpbroadcastd 40(%rsp), %zmm1                            #216.9 c17
        vmovaps   .L_2il0floatpacket.226(%rip), %zmm0           #216.9 c21
        .align    16,0x90
                                # LOE rcx rsi r8 r10 eax edx ebx edi r9d r12d r13d zmm0 zmm1 zmm2 zmm3 zmm4
..B1.123:                       # Preds ..B1.123 ..B1.122 Latency 49
        vpcmpud   $6, %zmm1, %zmm3, %k0                         #216.9 c1
        lea       (%rdi,%rax), %r11d                            #218.13 c1
        lea       (%r10,%r11,4), %r14                           #218.13 c5
        lea       (%r8,%r11,4), %r15                            #219.13 c5
        knot      %k0, %k3                                      #216.9 c9
        addl      $16, %eax                                     #216.9 c9
        kmov      %k3, %k1                                      #218.13 c13
        kmov      %k3, %k2                                      #219.13 c13
..L228:                                                         #218.13
        vscatterdps %zmm2, (%r14,%zmm0,4){%k1}                  #218.13
        jkzd      ..L227, %k1   # Prob 50%                      #218.13
        vscatterdps %zmm2, (%r14,%zmm0,4){%k1}                  #218.13
        jknzd     ..L228, %k1   # Prob 50%                      #218.13
..L227:                                                         #
..L230:                                                         #219.13
        vscatterdps %zmm2, (%r15,%zmm0,4){%k2}                  #219.13
        jkzd      ..L229, %k2   # Prob 50%                      #219.13
        vscatterdps %zmm2, (%r15,%zmm0,4){%k2}                  #219.13
        jknzd     ..L230, %k2   # Prob 50%                      #219.13
..L229:                                                         #
        lea       (%rsi,%r11,4), %r14                           #220.13 c33
..L232:                                                         #220.13
        vscatterdps %zmm2, (%r14,%zmm0,4){%k3}                  #220.13
        jkzd      ..L231, %k3   # Prob 50%                      #220.13
        vscatterdps %zmm2, (%r14,%zmm0,4){%k3}                  #220.13
        jknzd     ..L232, %k3   # Prob 50%                      #220.13
..L231:                                                         #
        vpaddd    %zmm4, %zmm3, %zmm3                           #220.13 c45
        cmpl      %edx, %eax                                    #216.9 c45
        jb        ..B1.123      # Prob 99%                      #216.9 c49
                                # LOE rcx rsi r8 r10 eax edx ebx edi r9d r12d r13d zmm0 zmm1 zmm2 zmm3 zmm4
..B1.124:                       # Preds ..B1.123 Latency 1
        cmpl      %edx, %r9d                                    #216.9 c1
        je        ..B1.139      # Prob 50%                      #216.9 c1
                                # LOE rcx rsi r8 r10 edx ebx edi r9d r12d r13d
..B1.125:                       # Preds ..B1.124 ..B1.121 Latency 5
        lea       64(%rdx), %eax                                #216.9 c1
        cmpl      %eax, %ebx                                    #216.9 c5
        jl        ..B1.133      # Prob 50%                      #216.9 c5
                                # LOE rcx rsi r8 r10 edx ebx edi r9d r12d r13d
..B1.126:                       # Preds ..B1.125 Latency 9
        lea       (%rdx,%rdi), %r11d                            #219.13 c1
        lea       (%r8,%r11,4), %r14                            #219.13 c1
        lea       (%rdi,%rdx), %eax                             # c5
        andq      $63, %r14                                     #216.9 c5
        je        ..B1.130      # Prob 60%                      #216.9 c9
                                # LOE rax rcx rsi r8 r10 edx ebx edi r9d r12d r13d
..B1.127:                       # Preds ..B1.126 Latency 21
        lea       64(%rdi), %r11d                               #216.9 c1
        vprefetche0 (%r10,%rcx,4)                               #216.9 c1
        lea       128(%rdi), %r14d                              #216.9 c5
        vprefetche0 (%r10,%r11,4)                               #216.9 c5
        vpxord    %zmm0, %zmm0, %zmm0                           #218.23 c9
        vprefetche0 (%r10,%r14,4)                               #216.9 c9
        vprefetche0 (%r8,%rcx,4)                                #216.9 c13
        movb      %al, %al                                      #216.9 c13
        vprefetche0 (%r8,%r11,4)                                #216.9 c17
        movb      %al, %al                                      #216.9 c17
        vprefetche0 (%r8,%r14,4)                                #216.9 c21
                                # LOE rax rsi r8 r10 edx ebx edi r9d r12d r13d zmm0
..B1.128:                       # Preds ..B1.128 ..B1.127 Latency 149
        vpackstoreld %zmm0, (%r10,%rax,4)                       #218.13 c1
        lea       16(%rax), %ecx                                #218.13 c1
        vpackstorehd %zmm0, 64(%r10,%rax,4)                     #218.13 c5
        addl      $64, %edx                                     #216.9 c5
        vpackstoreld %zmm0, (%r8,%rax,4)                        #219.13 c9
        lea       32(%rax), %r11d                               #218.13 c9
        vpackstorehd %zmm0, 64(%r8,%rax,4)                      #219.13 c13
        vmovaps   %zmm0, (%rsi,%rax,4)                          #220.13 c17
        lea       48(%rax), %r14d                               #218.13 c17
        vpackstoreld %zmm0, (%r10,%rcx,4)                       #218.13 c21
        lea       512(%rax), %r15d                              #218.13 c21
        vpackstorehd %zmm0, 64(%r10,%rcx,4)                     #218.13 c25
        vpackstoreld %zmm0, (%r8,%rcx,4)                        #219.13 c29
        vprefetche1 (%r10,%r15,4)                               #218.13 c29
        vpackstorehd %zmm0, 64(%r8,%rcx,4)                      #219.13 c33
        vmovaps   %zmm0, (%rsi,%rcx,4)                          #220.13 c37
        lea       192(%rax), %ecx                               #218.13 c37
        vpackstoreld %zmm0, (%r10,%r11,4)                       #218.13 c41
        vprefetche0 (%r10,%rcx,4)                               #218.13 c41
        vpackstorehd %zmm0, 64(%r10,%r11,4)                     #218.13 c45
        vpackstoreld %zmm0, (%r8,%r11,4)                        #219.13 c49
        vprefetche1 (%r8,%r15,4)                                #219.13 c49
        vpackstorehd %zmm0, 64(%r8,%r11,4)                      #219.13 c53
        vmovaps   %zmm0, (%rsi,%r11,4)                          #220.13 c57
        vprefetche0 (%r8,%rcx,4)                                #219.13 c57
        vpackstoreld %zmm0, (%r10,%r14,4)                       #218.13 c61
        vprefetche1 (%rsi,%r15,4)                               #220.13 c61
        vpackstorehd %zmm0, 64(%r10,%r14,4)                     #218.13 c65
        vpackstoreld %zmm0, (%r8,%r14,4)                        #219.13 c69
        vprefetche0 (%rsi,%rcx,4)                               #220.13 c69
        vpackstorehd %zmm0, 64(%r8,%r14,4)                      #219.13 c73
        vmovaps   %zmm0, (%rsi,%r14,4)                          #220.13 c77
        lea       528(%rax), %r11d                              #218.13 c77
        lea       208(%rax), %r14d                              #218.13 c81
        vprefetche1 (%r10,%r11,4)                               #218.13 c81
        vprefetche0 (%r10,%r14,4)                               #218.13 c85
        lea       544(%rax), %ecx                               #218.13 c85
        vprefetche1 (%r8,%r11,4)                                #219.13 c89
        lea       224(%rax), %r15d                              #218.13 c89
        vprefetche0 (%r8,%r14,4)                                #219.13 c93
        movb      %dl, %dl                                      #220.13 c93
        vprefetche1 (%rsi,%r11,4)                               #220.13 c97
        lea       560(%rax), %r11d                              #218.13 c97
        vprefetche0 (%rsi,%r14,4)                               #220.13 c101
        lea       240(%rax), %r14d                              #218.13 c101
        addl      $64, %eax                                     #216.9 c105
        vprefetche1 (%r10,%rcx,4)                               #218.13 c105
        movl      %eax, %eax                                    #216.9
        vprefetche0 (%r10,%r15,4)                               #218.13 c109
        cmpl      %ebx, %edx                                    #216.9 c109
        vprefetche1 (%r8,%rcx,4)                                #219.13 c113
        movb      %al, %al                                      #219.13 c113
        vprefetche0 (%r8,%r15,4)                                #219.13 c117
        movb      %al, %al                                      #220.13 c117
        vprefetche1 (%rsi,%rcx,4)                               #220.13 c121
        movb      %al, %al                                      #220.13 c121
        vprefetche0 (%rsi,%r15,4)                               #220.13 c125
        movb      %al, %al                                      #218.13 c125
        vprefetche1 (%r10,%r11,4)                               #218.13 c129
        movb      %al, %al                                      #218.13 c129
        vprefetche0 (%r10,%r14,4)                               #218.13 c133
        movb      %al, %al                                      #219.13 c133
        vprefetche1 (%r8,%r11,4)                                #219.13 c137
        movb      %al, %al                                      #219.13 c137
        vprefetche0 (%r8,%r14,4)                                #219.13 c141
        movb      %al, %al                                      #220.13 c141
        vprefetche1 (%rsi,%r11,4)                               #220.13 c145
        movb      %al, %al                                      #220.13 c145
        vprefetche0 (%rsi,%r14,4)                               #220.13 c149
        jb        ..B1.128      # Prob 99%                      #216.9 c149
        jmp       ..B1.133      # Prob 100%                     #216.9 c149
                                # LOE rax rsi r8 r10 edx ebx edi r9d r12d r13d zmm0
..B1.130:                       # Preds ..B1.126 Latency 21
        lea       64(%rdi), %r11d                               #216.9 c1
        vprefetche0 (%r10,%rcx,4)                               #216.9 c1
        lea       128(%rdi), %r14d                              #216.9 c5
        vprefetche0 (%r10,%r11,4)                               #216.9 c5
        vpxord    %zmm0, %zmm0, %zmm0                           #218.23 c9
        vprefetche0 (%r10,%r14,4)                               #216.9 c9
        vprefetche0 (%r8,%rcx,4)                                #216.9 c13
        movb      %al, %al                                      #216.9 c13
        vprefetche0 (%r8,%r11,4)                                #216.9 c17
        movb      %al, %al                                      #216.9 c17
        vprefetche0 (%r8,%r14,4)                                #216.9 c21
                                # LOE rax rsi r8 r10 edx ebx edi r9d r12d r13d zmm0
..B1.131:                       # Preds ..B1.131 ..B1.130 Latency 133
        vpackstoreld %zmm0, (%r10,%rax,4)                       #218.13 c1
        lea       16(%rax), %ecx                                #218.13 c1
        vpackstorehd %zmm0, 64(%r10,%rax,4)                     #218.13 c5
        addl      $64, %edx                                     #216.9 c5
        vmovaps   %zmm0, (%r8,%rax,4)                           #219.13 c9
        lea       32(%rax), %r11d                               #218.13 c9
        vmovaps   %zmm0, (%rsi,%rax,4)                          #220.13 c13
        lea       48(%rax), %r14d                               #218.13 c13
        vpackstoreld %zmm0, (%r10,%rcx,4)                       #218.13 c17
        lea       512(%rax), %r15d                              #218.13 c17
        vpackstorehd %zmm0, 64(%r10,%rcx,4)                     #218.13 c21
        vmovaps   %zmm0, (%r8,%rcx,4)                           #219.13 c25
        vprefetche1 (%r10,%r15,4)                               #218.13 c25
        vmovaps   %zmm0, (%rsi,%rcx,4)                          #220.13 c29
        lea       192(%rax), %ecx                               #218.13 c29
        vpackstoreld %zmm0, (%r10,%r11,4)                       #218.13 c33
        vprefetche0 (%r10,%rcx,4)                               #218.13 c33
        vpackstorehd %zmm0, 64(%r10,%r11,4)                     #218.13 c37
        vmovaps   %zmm0, (%r8,%r11,4)                           #219.13 c41
        vprefetche1 (%r8,%r15,4)                                #219.13 c41
        vmovaps   %zmm0, (%rsi,%r11,4)                          #220.13 c45
        vprefetche0 (%r8,%rcx,4)                                #219.13 c45
        vpackstoreld %zmm0, (%r10,%r14,4)                       #218.13 c49
        vprefetche1 (%rsi,%r15,4)                               #220.13 c49
        vpackstorehd %zmm0, 64(%r10,%r14,4)                     #218.13 c53
        vmovaps   %zmm0, (%r8,%r14,4)                           #219.13 c57
        vprefetche0 (%rsi,%rcx,4)                               #220.13 c57
        vmovaps   %zmm0, (%rsi,%r14,4)                          #220.13 c61
        lea       528(%rax), %r11d                              #218.13 c61
        lea       208(%rax), %r14d                              #218.13 c65
        vprefetche1 (%r10,%r11,4)                               #218.13 c65
        vprefetche0 (%r10,%r14,4)                               #218.13 c69
        lea       544(%rax), %ecx                               #218.13 c69
        vprefetche1 (%r8,%r11,4)                                #219.13 c73
        lea       224(%rax), %r15d                              #218.13 c73
        vprefetche0 (%r8,%r14,4)                                #219.13 c77
        movb      %dl, %dl                                      #220.13 c77
        vprefetche1 (%rsi,%r11,4)                               #220.13 c81
        lea       560(%rax), %r11d                              #218.13 c81
        vprefetche0 (%rsi,%r14,4)                               #220.13 c85
        lea       240(%rax), %r14d                              #218.13 c85
        addl      $64, %eax                                     #216.9 c89
        vprefetche1 (%r10,%rcx,4)                               #218.13 c89
        movl      %eax, %eax                                    #216.9
        vprefetche0 (%r10,%r15,4)                               #218.13 c93
        cmpl      %ebx, %edx                                    #216.9 c93
        vprefetche1 (%r8,%rcx,4)                                #219.13 c97
        movb      %al, %al                                      #219.13 c97
        vprefetche0 (%r8,%r15,4)                                #219.13 c101
        movb      %al, %al                                      #220.13 c101
        vprefetche1 (%rsi,%rcx,4)                               #220.13 c105
        movb      %al, %al                                      #220.13 c105
        vprefetche0 (%rsi,%r15,4)                               #220.13 c109
        movb      %al, %al                                      #218.13 c109
        vprefetche1 (%r10,%r11,4)                               #218.13 c113
        movb      %al, %al                                      #218.13 c113
        vprefetche0 (%r10,%r14,4)                               #218.13 c117
        movb      %al, %al                                      #219.13 c117
        vprefetche1 (%r8,%r11,4)                                #219.13 c121
        movb      %al, %al                                      #219.13 c121
        vprefetche0 (%r8,%r14,4)                                #219.13 c125
        movb      %al, %al                                      #220.13 c125
        vprefetche1 (%rsi,%r11,4)                               #220.13 c129
        movb      %al, %al                                      #220.13 c129
        vprefetche0 (%rsi,%r14,4)                               #220.13 c133
        jb        ..B1.131      # Prob 99%                      #216.9 c133
                                # LOE rax rsi r8 r10 edx ebx edi r9d r12d r13d zmm0
..B1.133:                       # Preds ..B1.131 ..B1.128 ..B1.125 Latency 5
        lea       1(%rbx), %eax                                 #216.9 c1
        cmpl      %eax, %r9d                                    #216.9 c5
        jb        ..B1.139      # Prob 50%                      #216.9 c5
                                # LOE rsi r8 r10 ebx edi r9d r12d r13d
..B1.134:                       # Preds ..B1.133 Latency 21
        subl      %ebx, %r9d                                    #216.9 c1
        addl      %ebx, %edi                                    #218.13 c1
        movl      %r9d, 40(%rsp)                                #216.9 c5
        vpbroadcastd .L_2il0floatpacket.223(%rip), %zmm3        #216.9 c9
        vmovaps   .L_2il0floatpacket.224(%rip), %zmm2           #216.9 c13
        vpxord    %zmm1, %zmm1, %zmm1                           #218.23 c17
        vpbroadcastd 40(%rsp), %zmm0                            #216.9 c21
                                # LOE rsi r8 r10 edi r9d r12d r13d zmm0 zmm1 zmm2 zmm3
..B1.135:                       # Preds ..B1.137 ..B1.134 Latency 17
        vpcmpud   $6, %zmm0, %zmm2, %k0                         #216.9 c1
        movl      %edi, %ecx                                    #218.13 c1
        nop                                                     #216.9 c5
        knot      %k0, %k3                                      #216.9 c9
        knot      %k3, %k1                                      #216.9 c13
        jknzd     ..B1.144, %k1 # Prob 9%                       #216.9 c17
                                # LOE rcx rsi r8 r10 edi r9d r12d r13d zmm0 zmm1 zmm2 zmm3 k3
..B1.136:                       # Preds ..B1.135 Latency 17
        vpackstoreld %zmm1, (%r10,%rcx,4)                       #218.13 c1
        vpackstorehd %zmm1, 64(%r10,%rcx,4)                     #218.13 c5
        vpackstoreld %zmm1, (%r8,%rcx,4)                        #219.13 c9
        vpackstorehd %zmm1, 64(%r8,%rcx,4)                      #219.13 c13
        vmovaps   %zmm1, (%rsi,%rcx,4)                          #220.13 c17
                                # LOE rsi r8 r10 edi r9d r12d r13d zmm0 zmm1 zmm2 zmm3
..B1.137:                       # Preds ..B1.144 ..B1.136 Latency 9
        addl      $16, %r12d                                    #216.9 c1
        addl      $16, %edi                                     #216.9 c1
        vpaddd    %zmm3, %zmm2, %zmm2                           #216.9 c5
        cmpl      %r9d, %r12d                                   #216.9 c5
        jb        ..B1.135      # Prob 99%                      #216.9 c9
                                # LOE rsi r8 r10 edi r9d r12d r13d zmm0 zmm1 zmm2 zmm3
..B1.139:                       # Preds ..B1.137 ..B1.124 ..B1.117 ..B1.118 ..B1.133
                                #       Latency 9
        lea       .2.5_2_kmpc_loc_struct_pack.47(%rip), %rdi    #213.9 c1
        movl      %r13d, %esi                                   #213.9 c1
        xorl      %eax, %eax                                    #213.9 c5
..___tag_value__Z18particles_simulate14t_particles_DA.233:      #213.9
        call      __kmpc_for_static_fini@PLT                    #213.9
..___tag_value__Z18particles_simulate14t_particles_DA.234:      #
                                # LOE
..B1.140:                       # Preds ..B1.139 Latency 13
        movq      48(%rsp), %r15                                #213.9 c1
..___tag_value__Z18particles_simulate14t_particles_DA.235:      #
        movq      56(%rsp), %r14                                #213.9 c1
..___tag_value__Z18particles_simulate14t_particles_DA.236:      #
        movq      64(%rsp), %r13                                #213.9 c5
..___tag_value__Z18particles_simulate14t_particles_DA.237:      #
        movq      72(%rsp), %r12                                #213.9 c5
..___tag_value__Z18particles_simulate14t_particles_DA.238:      #
        movq      80(%rsp), %rbx                                #213.9 c9
..___tag_value__Z18particles_simulate14t_particles_DA.239:      #
        movq      %rbp, %rsp                                    #213.9 c13
        popq      %rbp                                          #213.9
..___tag_value__Z18particles_simulate14t_particles_DA.240:      #
        ret                                                     #213.9
..___tag_value__Z18particles_simulate14t_particles_DA.242:      #
                                # LOE
..B1.141:                       # Preds ..B1.51                 # Infreq Latency 114
        vmovaps   .L_2il0floatpacket.226(%rip), %zmm9           #290.12 c1
        vmovaps   %zmm2, %zmm6                                  #290.12 c5
        lea       (%r14,%rax,4), %rcx                           #290.12 c5
        vmovaps   %zmm2, %zmm5                                  #290.26 c9
        lea       (%r11,%rax,4), %rdx                           #290.26 c9
        vmovaps   %zmm2, %zmm8                                  #291.12 c13
        kmov      %k1, %k2                                      #290.12 c13
..L250:                                                         #290.12
        vgatherdps (%rcx,%zmm9,4), %zmm6{%k2}                   #290.12
        jkzd      ..L249, %k2   # Prob 50%                      #290.12
        vgatherdps (%rcx,%zmm9,4), %zmm6{%k2}                   #290.12
        jknzd     ..L250, %k2   # Prob 50%                      #290.12
..L249:                                                         #
        vmovaps   %zmm2, %zmm7                                  #291.26 c25
        kmov      %k1, %k3                                      #290.26 c25
..L252:                                                         #290.26
        vgatherdps (%rdx,%zmm9,4), %zmm5{%k3}                   #290.26
        jkzd      ..L251, %k3   # Prob 50%                      #290.26
        vgatherdps (%rdx,%zmm9,4), %zmm5{%k3}                   #290.26
        jknzd     ..L252, %k3   # Prob 50%                      #290.26
..L251:                                                         #
        vfmadd231ps %zmm1, %zmm5, %zmm6                         #290.12 c37
        lea       (%r8,%rax,4), %r15                            #291.26 c37
        vmovaps   %zmm2, %zmm10                                 #292.26 c41
        lea       (%r9,%rax,4), %rdx                            #291.12 c41
        vmovaps   %zmm2, %zmm11                                 #292.12 c45
        kmov      %k1, %k4                                      #290.12 c45
..L254:                                                         #290.12
        vscatterdps %zmm6, (%rcx,%zmm9,4){%k4}                  #290.12
        jkzd      ..L253, %k4   # Prob 50%                      #290.12
        vscatterdps %zmm6, (%rcx,%zmm9,4){%k4}                  #290.12
        jknzd     ..L254, %k4   # Prob 50%                      #290.12
..L253:                                                         #
        kmov      %k1, %k5                                      #291.12 c57
        kmov      %k1, %k6                                      #291.26 c57
..L256:                                                         #291.12
        vgatherdps (%rdx,%zmm9,4), %zmm8{%k5}                   #291.12
        jkzd      ..L255, %k5   # Prob 50%                      #291.12
        vgatherdps (%rdx,%zmm9,4), %zmm8{%k5}                   #291.12
        jknzd     ..L256, %k5   # Prob 50%                      #291.12
..L255:                                                         #
..L258:                                                         #291.26
        vgatherdps (%r15,%zmm9,4), %zmm7{%k6}                   #291.26
        jkzd      ..L257, %k6   # Prob 50%                      #291.26
        vgatherdps (%r15,%zmm9,4), %zmm7{%k6}                   #291.26
        jknzd     ..L258, %k6   # Prob 50%                      #291.26
..L257:                                                         #
        vfmadd231ps %zmm1, %zmm7, %zmm8                         #291.12 c77
        lea       (%rbx,%rax,4), %rcx                           #292.26 c77
        kmov      %k1, %k7                                      #291.12 c81
        kmov      %k1, %k2                                      #292.26 c81
..L260:                                                         #291.12
        vscatterdps %zmm8, (%rdx,%zmm9,4){%k7}                  #291.12
        jkzd      ..L259, %k7   # Prob 50%                      #291.12
        vscatterdps %zmm8, (%rdx,%zmm9,4){%k7}                  #291.12
        jknzd     ..L260, %k7   # Prob 50%                      #291.12
..L259:                                                         #
..L262:                                                         #292.26
        vgatherdps (%rcx,%zmm9,4), %zmm10{%k2}                  #292.26
        jkzd      ..L261, %k2   # Prob 50%                      #292.26
        vgatherdps (%rcx,%zmm9,4), %zmm10{%k2}                  #292.26
        jknzd     ..L262, %k2   # Prob 50%                      #292.26
..L261:                                                         #
        vmovaps   (%r10,%rax,4), %zmm11{%k1}                    #292.12 c101
        vfmadd231ps %zmm1, %zmm10, %zmm11                       #292.12 c105
        nop                                                     #292.12 c109
        vmovaps   %zmm11, (%r10,%rax,4){%k1}                    #292.12 c113
        jmp       ..B1.53       # Prob 100%                     #292.12 c113
                                # LOE rbx r8 r9 r10 r11 r14 esi edi r12d r13d zmm0 zmm1 zmm2 zmm3 zmm4
..B1.142:                       # Preds ..B1.76                 # Infreq Latency 114
        vmovaps   .L_2il0floatpacket.226(%rip), %zmm9           #278.13 c1
        vmovaps   %zmm2, %zmm6                                  #278.13 c5
        lea       (%r14,%rax,4), %rcx                           #278.13 c5
        vmovaps   %zmm2, %zmm5                                  #278.32 c9
        lea       (%r11,%rax,4), %rdx                           #278.32 c9
        vmovaps   %zmm2, %zmm8                                  #279.13 c13
        kmov      %k1, %k2                                      #278.13 c13
..L264:                                                         #278.13
        vgatherdps (%rcx,%zmm9,4), %zmm6{%k2}                   #278.13
        jkzd      ..L263, %k2   # Prob 50%                      #278.13
        vgatherdps (%rcx,%zmm9,4), %zmm6{%k2}                   #278.13
        jknzd     ..L264, %k2   # Prob 50%                      #278.13
..L263:                                                         #
        vmovaps   %zmm2, %zmm7                                  #279.32 c25
        kmov      %k1, %k3                                      #278.32 c25
..L266:                                                         #278.32
        vgatherdps (%rdx,%zmm9,4), %zmm5{%k3}                   #278.32
        jkzd      ..L265, %k3   # Prob 50%                      #278.32
        vgatherdps (%rdx,%zmm9,4), %zmm5{%k3}                   #278.32
        jknzd     ..L266, %k3   # Prob 50%                      #278.32
..L265:                                                         #
        vfmadd231ps %zmm1, %zmm5, %zmm6                         #278.13 c37
        lea       (%r8,%rax,4), %r15                            #279.32 c37
        vmovaps   %zmm2, %zmm10                                 #280.32 c41
        lea       (%r9,%rax,4), %rdx                            #279.13 c41
        vmovaps   %zmm2, %zmm11                                 #280.13 c45
        kmov      %k1, %k4                                      #278.13 c45
..L268:                                                         #278.13
        vscatterdps %zmm6, (%rcx,%zmm9,4){%k4}                  #278.13
        jkzd      ..L267, %k4   # Prob 50%                      #278.13
        vscatterdps %zmm6, (%rcx,%zmm9,4){%k4}                  #278.13
        jknzd     ..L268, %k4   # Prob 50%                      #278.13
..L267:                                                         #
        kmov      %k1, %k5                                      #279.13 c57
        kmov      %k1, %k6                                      #279.32 c57
..L270:                                                         #279.13
        vgatherdps (%rdx,%zmm9,4), %zmm8{%k5}                   #279.13
        jkzd      ..L269, %k5   # Prob 50%                      #279.13
        vgatherdps (%rdx,%zmm9,4), %zmm8{%k5}                   #279.13
        jknzd     ..L270, %k5   # Prob 50%                      #279.13
..L269:                                                         #
..L272:                                                         #279.32
        vgatherdps (%r15,%zmm9,4), %zmm7{%k6}                   #279.32
        jkzd      ..L271, %k6   # Prob 50%                      #279.32
        vgatherdps (%r15,%zmm9,4), %zmm7{%k6}                   #279.32
        jknzd     ..L272, %k6   # Prob 50%                      #279.32
..L271:                                                         #
        vfmadd231ps %zmm1, %zmm7, %zmm8                         #279.13 c77
        lea       (%rbx,%rax,4), %rcx                           #280.32 c77
        kmov      %k1, %k7                                      #279.13 c81
        kmov      %k1, %k2                                      #280.32 c81
..L274:                                                         #279.13
        vscatterdps %zmm8, (%rdx,%zmm9,4){%k7}                  #279.13
        jkzd      ..L273, %k7   # Prob 50%                      #279.13
        vscatterdps %zmm8, (%rdx,%zmm9,4){%k7}                  #279.13
        jknzd     ..L274, %k7   # Prob 50%                      #279.13
..L273:                                                         #
..L276:                                                         #280.32
        vgatherdps (%rcx,%zmm9,4), %zmm10{%k2}                  #280.32
        jkzd      ..L275, %k2   # Prob 50%                      #280.32
        vgatherdps (%rcx,%zmm9,4), %zmm10{%k2}                  #280.32
        jknzd     ..L276, %k2   # Prob 50%                      #280.32
..L275:                                                         #
        vmovaps   (%r10,%rax,4), %zmm11{%k1}                    #280.13 c101
        vfmadd231ps %zmm1, %zmm10, %zmm11                       #280.13 c105
        nop                                                     #280.13 c109
        vmovaps   %zmm11, (%r10,%rax,4){%k1}                    #280.13 c113
        jmp       ..B1.78       # Prob 100%                     #280.13 c113
                                # LOE rbx r8 r9 r10 r11 r14 esi edi r12d r13d zmm0 zmm1 zmm2 zmm3 zmm4
..B1.143:                       # Preds ..B1.101                # Infreq Latency 306
        vmovaps   .L_2il0floatpacket.226(%rip), %zmm1           #267.23 c1
        vmovaps   %zmm4, %zmm15                                 #267.33 c5
        lea       (%r11,%rax,4), %rdx                           #267.23 c5
        vmovaps   %zmm4, %zmm14                                 #267.23 c9
        kmov      %k1, %k2                                      #267.23 c9
        vmovaps   (%r10,%rax,4), %zmm15{%k1}                    #267.33 c13
        lea       (%r13,%rax,4), %rcx                           #267.13 c13
        vmovaps   %zmm4, %zmm7                                  #267.33 c17
        lea       (%rdi,%rax,4), %r15                           #268.23 c17
..L278:                                                         #267.23
        vgatherdps (%rdx,%zmm1,4), %zmm14{%k2}                  #267.23
        jkzd      ..L277, %k2   # Prob 50%                      #267.23
        vgatherdps (%rdx,%zmm1,4), %zmm14{%k2}                  #267.23
        jknzd     ..L278, %k2   # Prob 50%                      #267.23
..L277:                                                         #
        vfixupnanps .L_2il0floatpacket.228(%rip){1to16}, %zmm15, %zmm7 #267.33 c29
        vgetmantps $0, %zmm15, %zmm8                            #267.33 c33
        kmov      %k1, %k5                                      #267.13 c33
        vfixupnanps .L_2il0floatpacket.228(%rip){1to16}, %zmm14, %zmm7 #267.33 c37
        vrcp23ps  %zmm8, %zmm13                                 #267.33 c41
        kmov      %k1, %k6                                      #268.23 c41
        vmovaps   %zmm2{aaaa}, %zmm0                            #267.33 c45
        lea       (%r8,%rax,4), %rdx                            #268.13 c45
        vcmpeqps  %zmm7, %zmm7, %k4                             #267.33 c49
        vfnmadd213ps {rn-sae}, %zmm0, %zmm13, %zmm8             #267.33 c53
        vgetexpps %zmm15, %zmm10                                #267.33 c57
        kmov      %k4, %k3                                      #267.33 c57
        vgetexpps %zmm14, %zmm9                                 #267.33 c61
        kandn     %k0, %k3                                      #267.33 c61
        vfmadd213ps {rn-sae}, %zmm13, %zmm8, %zmm13             #267.33 c65
        vgetmantps $0, %zmm14, %zmm12                           #267.33 c69
        vsubps    %zmm10, %zmm9, %zmm11                         #267.33 c73
        vfixupnanps .L_2il0floatpacket.229(%rip){1to16}, %zmm15, %zmm15 #267.33 c77
        vmulps    {rn-sae}, %zmm13, %zmm12, %zmm17{%k4}         #267.33 c81
        vcvtfxpntps2dq $0, %zmm11, %zmm16                       #267.33 c85
        vmulps    {rn-sae}, %zmm15, %zmm14, %zmm17{%k3}         #267.33 c89
        kmov      %k1, %k3                                      #268.13 c89
        vscaleps  {rn}, %zmm16, %zmm17, %zmm17{%k4}             #267.33 c93
        kmov      %k1, %k4                                      #269.23 c93
        vmovaps   %zmm17, %zmm18                                #267.33 c97
        vmovaps   %zmm4, %zmm27                                 #268.33 c101
        vmovaps   %zmm4, %zmm26                                 #268.23 c105
..L280:                                                         #267.13
        vscatterdps %zmm18, (%rcx,%zmm1,4){%k5}                 #267.13
        jkzd      ..L279, %k5   # Prob 50%                      #267.13
        vscatterdps %zmm18, (%rcx,%zmm1,4){%k5}                 #267.13
        jknzd     ..L280, %k5   # Prob 50%                      #267.13
..L279:                                                         #
        vmovaps   (%r10,%rax,4), %zmm27{%k1}                    #268.33 c117
        vmovaps   %zmm4, %zmm19                                 #268.33 c121
        lea       (%rbx,%rax,4), %rcx                           #269.23 c121
..L282:                                                         #268.23
        vgatherdps (%r15,%zmm1,4), %zmm26{%k6}                  #268.23
        jkzd      ..L281, %k6   # Prob 50%                      #268.23
        vgatherdps (%r15,%zmm1,4), %zmm26{%k6}                  #268.23
        jknzd     ..L282, %k6   # Prob 50%                      #268.23
..L281:                                                         #
        vfixupnanps .L_2il0floatpacket.228(%rip){1to16}, %zmm27, %zmm19 #268.33 c133
        vgetmantps $0, %zmm27, %zmm20                           #268.33 c137
        vfixupnanps .L_2il0floatpacket.228(%rip){1to16}, %zmm26, %zmm19 #268.33 c141
        vrcp23ps  %zmm20, %zmm25                                #268.33 c145
        vcmpeqps  %zmm19, %zmm19, %k2                           #268.33 c149
        vfnmadd213ps {rn-sae}, %zmm0, %zmm25, %zmm20            #268.33 c153
        vgetexpps %zmm27, %zmm22                                #268.33 c157
        kmov      %k2, %k7                                      #268.33 c157
        vgetexpps %zmm26, %zmm21                                #268.33 c161
        kandn     %k0, %k7                                      #268.33 c161
        vfmadd213ps {rn-sae}, %zmm25, %zmm20, %zmm25            #268.33 c165
        vgetmantps $0, %zmm26, %zmm24                           #268.33 c169
        vsubps    %zmm22, %zmm21, %zmm23                        #268.33 c173
        vfixupnanps .L_2il0floatpacket.229(%rip){1to16}, %zmm27, %zmm27 #268.33 c177
        vmulps    {rn-sae}, %zmm25, %zmm24, %zmm29{%k2}         #268.33 c181
        vcvtfxpntps2dq $0, %zmm23, %zmm28                       #268.33 c185
        vmulps    {rn-sae}, %zmm27, %zmm26, %zmm29{%k7}         #268.33 c189
        vscaleps  {rn}, %zmm28, %zmm29, %zmm29{%k2}             #268.33 c193
        vmovaps   %zmm29, %zmm30                                #268.33 c197
        vmovaps   %zmm4, %zmm12                                 #269.33 c201
        vmovaps   %zmm4, %zmm11                                 #269.23 c205
..L284:                                                         #268.13
        vscatterdps %zmm30, (%rdx,%zmm1,4){%k3}                 #268.13
        jkzd      ..L283, %k3   # Prob 50%                      #268.13
        vscatterdps %zmm30, (%rdx,%zmm1,4){%k3}                 #268.13
        jknzd     ..L284, %k3   # Prob 50%                      #268.13
..L283:                                                         #
        vmovaps   (%r10,%rax,4), %zmm12{%k1}                    #269.33 c217
        lea       (%r9,%rax,4), %rax                            #269.13 c217
        vmovaps   %zmm4, %zmm31                                 #269.33 c221
..L286:                                                         #269.23
        vgatherdps (%rcx,%zmm1,4), %zmm11{%k4}                  #269.23
        jkzd      ..L285, %k4   # Prob 50%                      #269.23
        vgatherdps (%rcx,%zmm1,4), %zmm11{%k4}                  #269.23
        jknzd     ..L286, %k4   # Prob 50%                      #269.23
..L285:                                                         #
        vfixupnanps .L_2il0floatpacket.228(%rip){1to16}, %zmm12, %zmm31 #269.33 c233
        vgetmantps $0, %zmm12, %zmm7                            #269.33 c237
        vfixupnanps .L_2il0floatpacket.228(%rip){1to16}, %zmm11, %zmm31 #269.33 c241
        vrcp23ps  %zmm7, %zmm10                                 #269.33 c245
        vcmpeqps  %zmm31, %zmm31, %k6                           #269.33 c249
        vfnmadd213ps {rn-sae}, %zmm0, %zmm10, %zmm7             #269.33 c253
        vgetexpps %zmm12, %zmm31                                #269.33 c257
        kmov      %k6, %k5                                      #269.33 c257
        vgetexpps %zmm11, %zmm0                                 #269.33 c261
        kandn     %k0, %k5                                      #269.33 c261
        vfmadd213ps {rn-sae}, %zmm10, %zmm7, %zmm10             #269.33 c265
        vgetmantps $0, %zmm11, %zmm9                            #269.33 c269
        vsubps    %zmm31, %zmm0, %zmm8                          #269.33 c273
        vfixupnanps .L_2il0floatpacket.229(%rip){1to16}, %zmm12, %zmm12 #269.33 c277
        vmulps    {rn-sae}, %zmm10, %zmm9, %zmm14{%k6}          #269.33 c281
        vcvtfxpntps2dq $0, %zmm8, %zmm13                        #269.33 c285
        vmulps    {rn-sae}, %zmm12, %zmm11, %zmm14{%k5}         #269.33 c289
        vscaleps  {rn}, %zmm13, %zmm14, %zmm14{%k6}             #269.33 c293
        vmovaps   %zmm14, %zmm15                                #269.33 c297
        nop                                                     #269.13 c301
..L288:                                                         #269.13
        vscatterdps %zmm15, (%rax,%zmm1,4){%k1}                 #269.13
        jkzd      ..L287, %k1   # Prob 50%                      #269.13
        vscatterdps %zmm15, (%rax,%zmm1,4){%k1}                 #269.13
        jknzd     ..L288, %k1   # Prob 50%                      #269.13
..L287:                                                         #
        jmp       ..B1.103      # Prob 100%                     #269.13 c305
                                # LOE rbx rdi r8 r9 r10 r11 r13 esi r12d r14d zmm2 zmm3 zmm4 zmm5 zmm6 k0
..B1.144:                       # Preds ..B1.135                # Infreq Latency 30
        vmovaps   .L_2il0floatpacket.226(%rip), %zmm4           #218.13 c1
        lea       (%r10,%rcx,4), %rax                           #218.13 c5
        lea       (%r8,%rcx,4), %rdx                            #219.13 c5
        kmov      %k3, %k1                                      #218.13 c9
        kmov      %k3, %k2                                      #219.13 c9
..L290:                                                         #218.13
        vscatterdps %zmm1, (%rax,%zmm4,4){%k1}                  #218.13
        jkzd      ..L289, %k1   # Prob 50%                      #218.13
        vscatterdps %zmm1, (%rax,%zmm4,4){%k1}                  #218.13
        jknzd     ..L290, %k1   # Prob 50%                      #218.13
..L289:                                                         #
..L292:                                                         #219.13
        vscatterdps %zmm1, (%rdx,%zmm4,4){%k2}                  #219.13
        jkzd      ..L291, %k2   # Prob 50%                      #219.13
        vscatterdps %zmm1, (%rdx,%zmm4,4){%k2}                  #219.13
        jknzd     ..L292, %k2   # Prob 50%                      #219.13
..L291:                                                         #
        vmovaps   %zmm1, (%rsi,%rcx,4){%k3}                     #220.13 c29
        jmp       ..B1.137      # Prob 100%                     #220.13 c29
        .align    16,0x90
..___tag_value__Z18particles_simulate14t_particles_DA.293:      #
                                # LOE rsi r8 r10 edi r9d r12d r13d zmm0 zmm1 zmm2 zmm3
# mark_end;
	.type	_Z18particles_simulate14t_particles_DA,@function
	.size	_Z18particles_simulate14t_particles_DA,.-_Z18particles_simulate14t_particles_DA
	.section .gcc_except_table, "a"
	.align 4
_Z18particles_simulate14t_particles_DA$$LSDA:
	.byte	255
	.byte	155
	.uleb128	..___tag_value__Z18particles_simulate14t_particles_DA.297 - ..___tag_value__Z18particles_simulate14t_particles_DA.296
..___tag_value__Z18particles_simulate14t_particles_DA.296:
	.byte	1
	.uleb128	..___tag_value__Z18particles_simulate14t_particles_DA.295 - ..___tag_value__Z18particles_simulate14t_particles_DA.294
..___tag_value__Z18particles_simulate14t_particles_DA.294:
..___tag_value__Z18particles_simulate14t_particles_DA.295:
	.long	0
..___tag_value__Z18particles_simulate14t_particles_DA.297:
	.data
	.align 4
	.align 4
.2.5_2_kmpc_loc_struct_pack.38:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.5_2__kmpc_loc_pack.37
	.align 4
.2.5_2__kmpc_loc_pack.37:
	.byte	59
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	59
	.byte	112
	.byte	97
	.byte	114
	.byte	116
	.byte	105
	.byte	99
	.byte	108
	.byte	101
	.byte	115
	.byte	95
	.byte	115
	.byte	105
	.byte	109
	.byte	117
	.byte	108
	.byte	97
	.byte	116
	.byte	101
	.byte	59
	.byte	50
	.byte	48
	.byte	56
	.byte	59
	.byte	50
	.byte	48
	.byte	56
	.byte	59
	.byte	59
	.space 3, 0x00 	# pad
	.align 4
.2.5_2_kmpc_loc_struct_pack.47:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.5_2__kmpc_loc_pack.46
	.align 4
.2.5_2__kmpc_loc_pack.46:
	.byte	59
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	59
	.byte	112
	.byte	97
	.byte	114
	.byte	116
	.byte	105
	.byte	99
	.byte	108
	.byte	101
	.byte	115
	.byte	95
	.byte	115
	.byte	105
	.byte	109
	.byte	117
	.byte	108
	.byte	97
	.byte	116
	.byte	101
	.byte	59
	.byte	50
	.byte	49
	.byte	51
	.byte	59
	.byte	50
	.byte	50
	.byte	49
	.byte	59
	.byte	59
	.space 3, 0x00 	# pad
	.align 4
.2.5_2_kmpc_loc_struct_pack.69:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.5_2__kmpc_loc_pack.68
	.align 4
.2.5_2__kmpc_loc_pack.68:
	.byte	59
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	59
	.byte	112
	.byte	97
	.byte	114
	.byte	116
	.byte	105
	.byte	99
	.byte	108
	.byte	101
	.byte	115
	.byte	95
	.byte	115
	.byte	105
	.byte	109
	.byte	117
	.byte	108
	.byte	97
	.byte	116
	.byte	101
	.byte	59
	.byte	50
	.byte	50
	.byte	52
	.byte	59
	.byte	50
	.byte	53
	.byte	57
	.byte	59
	.byte	59
	.space 3, 0x00 	# pad
	.align 4
.2.5_2_kmpc_loc_struct_pack.102:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.5_2__kmpc_loc_pack.101
	.align 4
.2.5_2__kmpc_loc_pack.101:
	.byte	59
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	59
	.byte	112
	.byte	97
	.byte	114
	.byte	116
	.byte	105
	.byte	99
	.byte	108
	.byte	101
	.byte	115
	.byte	95
	.byte	115
	.byte	105
	.byte	109
	.byte	117
	.byte	108
	.byte	97
	.byte	116
	.byte	101
	.byte	59
	.byte	50
	.byte	54
	.byte	50
	.byte	59
	.byte	50
	.byte	55
	.byte	48
	.byte	59
	.byte	59
	.space 3, 0x00 	# pad
	.align 4
.2.5_2_kmpc_loc_struct_pack.128:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.5_2__kmpc_loc_pack.127
	.align 4
.2.5_2__kmpc_loc_pack.127:
	.byte	59
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	59
	.byte	112
	.byte	97
	.byte	114
	.byte	116
	.byte	105
	.byte	99
	.byte	108
	.byte	101
	.byte	115
	.byte	95
	.byte	115
	.byte	105
	.byte	109
	.byte	117
	.byte	108
	.byte	97
	.byte	116
	.byte	101
	.byte	59
	.byte	50
	.byte	55
	.byte	51
	.byte	59
	.byte	50
	.byte	56
	.byte	50
	.byte	59
	.byte	59
	.space 3, 0x00 	# pad
	.align 4
.2.5_2_kmpc_loc_struct_pack.153:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.5_2__kmpc_loc_pack.152
	.align 4
.2.5_2__kmpc_loc_pack.152:
	.byte	59
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	59
	.byte	112
	.byte	97
	.byte	114
	.byte	116
	.byte	105
	.byte	99
	.byte	108
	.byte	101
	.byte	115
	.byte	95
	.byte	115
	.byte	105
	.byte	109
	.byte	117
	.byte	108
	.byte	97
	.byte	116
	.byte	101
	.byte	59
	.byte	50
	.byte	56
	.byte	53
	.byte	59
	.byte	50
	.byte	57
	.byte	51
	.byte	59
	.byte	59
	.data
# -- End  _Z18particles_simulate14t_particles_DA, L__Z18particles_simulate14t_particles_DA_213__par_loop0_2.45, L__Z18particles_simulate14t_particles_DA_224__par_loop1_2.67, L__Z18particles_simulate14t_particles_DA_262__par_loop2_2.100, L__Z18particles_simulate14t_particles_DA_273__par_loop3_2.126, L__Z18particles_simulate14t_particles_DA_285__par_loop4_2.151
	.text
# -- Begin  _Z14particles_init14t_particles_DA, L__Z14particles_init14t_particles_DA_181__par_loop0_2.249
# mark_begin;
# Threads 4
        .align    16,0x90
	.globl _Z14particles_init14t_particles_DA
_Z14particles_init14t_particles_DA:
# parameter 1: 16 + %rbp
..B2.1:                         # Preds ..B2.0 Latency 17

### {

..___tag_value__Z14particles_init14t_particles_DA.298:          #180.1
        pushq     %rbp                                          #180.1
..___tag_value__Z14particles_init14t_particles_DA.300:          #
        movq      %rsp, %rbp                                    #180.1
..___tag_value__Z14particles_init14t_particles_DA.301:          #
        andq      $-64, %rsp                                    #180.1
        subq      $256, %rsp                                    #180.1 c1

###     #pragma omp parallel for

        lea       .2.6_2_kmpc_loc_struct_pack.242(%rip), %rdi   #181.5 c1
        movq      %rbx, 48(%rsp)                                #180.1 c5
        movq      %r15, 16(%rsp)                                #180.1 c5
        movq      %r14, 24(%rsp)                                #180.1 c9
        movq      %r13, 32(%rsp)                                #180.1 c9
        movq      %r12, 40(%rsp)                                #180.1 c13
        call      __kmpc_global_thread_num@PLT                  #181.5 c17
..___tag_value__Z14particles_init14t_particles_DA.303:          #
                                # LOE eax
..B2.30:                        # Preds ..B2.1 Latency 9
        movl      %eax, (%rsp)                                  #181.5 c1
        lea       .2.6_2_kmpc_loc_struct_pack.251(%rip), %rdi   #181.5 c1
        xorl      %eax, %eax                                    #181.5 c5
..___tag_value__Z14particles_init14t_particles_DA.308:          #181.5
        call      __kmpc_ok_to_fork@PLT                         #181.5
..___tag_value__Z14particles_init14t_particles_DA.309:          #
                                # LOE eax
..B2.2:                         # Preds ..B2.30 Latency 1
        testl     %eax, %eax                                    #181.5 c1
        je        ..B2.4        # Prob 50%                      #181.5 c1
                                # LOE
..B2.3:                         # Preds ..B2.2 Latency 61
        lea       112(%rbp), %rbx                               #181.5 c1
        lea       104(%rbp), %r10                               #181.5 c1
        lea       96(%rbp), %r11                                #181.5 c5
        lea       88(%rbp), %r12                                #181.5 c5
        lea       80(%rbp), %r13                                #181.5 c9
        pushq     %rsp                                          #181.5 c9
        lea       72(%rbp), %r14                                #181.5 c13
        pushq     %rbx                                          #181.5 c13
        lea       64(%rbp), %r15                                #181.5 c17
        pushq     %r10                                          #181.5 c17
        lea       56(%rbp), %rax                                #181.5 c21
        pushq     %r11                                          #181.5 c21
        lea       48(%rbp), %rsi                                #181.5 c25
        pushq     %r12                                          #181.5 c25
        lea       40(%rbp), %rdi                                #181.5 c29
        pushq     %r13                                          #181.5 c29
        lea       16(%rbp), %rcx                                #181.5 c33
        lea       32(%rbp), %r8                                 #181.5 c33
        pushq     %r14                                          #181.5 c37
        lea       L__Z14particles_init14t_particles_DA_181__par_loop0_2.249(%rip), %rdx #181.5 c37
        pushq     %r15                                          #181.5 c41
        lea       24(%rbp), %r9                                 #181.5 c41
        pushq     %rax                                          #181.5 c45
        xorl      %eax, %eax                                    #181.5 c45
        pushq     %rsi                                          #181.5 c49
        pushq     $14                                           #181.5 c49
        popq      %rsi                                          #181.5
        pushq     %rdi                                          #181.5 c53
        lea       .2.6_2_kmpc_loc_struct_pack.251(%rip), %rdi   #181.5 c53
        pushq     %r8                                           #181.5 c57
        movq      %rcx, %r8                                     #181.5 c57
..___tag_value__Z14particles_init14t_particles_DA.310:          #181.5
        call      __kmpc_fork_call@PLT                          #181.5
..___tag_value__Z14particles_init14t_particles_DA.311:          #
                                # LOE
..B2.31:                        # Preds ..B2.3 Latency 2
        addq      $96, %rsp                                     #181.5 c1
        jmp       ..B2.7        # Prob 100%                     #181.5 c1
                                # LOE
..B2.4:                         # Preds ..B2.2 Latency 9
        movl      (%rsp), %esi                                  #181.5 c1
        lea       .2.6_2_kmpc_loc_struct_pack.251(%rip), %rdi   #181.5 c1
        xorl      %eax, %eax                                    #181.5 c5
..___tag_value__Z14particles_init14t_particles_DA.312:          #181.5
        call      __kmpc_serialized_parallel@PLT                #181.5
..___tag_value__Z14particles_init14t_particles_DA.313:          #
                                # LOE
..B2.5:                         # Preds ..B2.4 Latency 57
        lea       112(%rbp), %rax                               #181.5 c1
        lea       104(%rbp), %rbx                               #181.5 c1
        lea       96(%rbp), %r10                                #181.5 c5
        lea       88(%rbp), %r11                                #181.5 c5
        lea       80(%rbp), %r12                                #181.5 c9
        lea       (%rsp), %rdi                                  #181.5 c9
        lea       72(%rbp), %r13                                #181.5 c13
        pushq     %rax                                          #181.5 c13
        lea       64(%rbp), %r14                                #181.5 c17
        pushq     %rbx                                          #181.5 c17
        lea       56(%rbp), %r15                                #181.5 c21
        pushq     %r10                                          #181.5 c21
        lea       48(%rbp), %r9                                 #181.5 c25
        pushq     %r11                                          #181.5 c25
        lea       16(%rbp), %rdx                                #181.5 c29
        lea       40(%rbp), %rcx                                #181.5 c29
        pushq     %r12                                          #181.5 c33
        lea       ___kmpv_zero_Z14particles_init14t_particles_DA_0(%rip), %rsi #181.5 c33
        pushq     %r13                                          #181.5 c37
        lea       24(%rbp), %r8                                 #181.5 c37
        pushq     %r14                                          #181.5 c41
        pushq     %r15                                          #181.5 c45
        pushq     %r9                                           #181.5 c49
        lea       32(%rbp), %r9                                 #181.5 c49
        pushq     %rcx                                          #181.5 c53
        movq      %rdx, %rcx                                    #181.5 c53
..___tag_value__Z14particles_init14t_particles_DA.314:          #181.5
        call      L__Z14particles_init14t_particles_DA_181__par_loop0_2.249 #181.5
..___tag_value__Z14particles_init14t_particles_DA.315:          #
                                # LOE
..B2.32:                        # Preds ..B2.5 Latency 1
        addq      $80, %rsp                                     #181.5 c1
                                # LOE
..B2.6:                         # Preds ..B2.32 Latency 9
        movl      (%rsp), %esi                                  #181.5 c1
        lea       .2.6_2_kmpc_loc_struct_pack.251(%rip), %rdi   #181.5 c1
        xorl      %eax, %eax                                    #181.5 c5
..___tag_value__Z14particles_init14t_particles_DA.316:          #181.5
        call      __kmpc_end_serialized_parallel@PLT            #181.5
..___tag_value__Z14particles_init14t_particles_DA.317:          #
                                # LOE
..B2.7:                         # Preds ..B2.6 ..B2.31 Latency 13

###     for(unsigned i = 0; i < N; i++)
###     {
###         p.pos_x[i] = 0.0f;
###         p.pos_y[i] = 0.0f;
###         p.pos_z[i] = 0.0f;
###         p.vel_x[i] = 0.0f;
###         p.vel_y[i] = 0.0f;
###         p.vel_z[i] = 0.0f;
###         p.weight[i] = 0.0f;
###         p.fx[i] = 0.0f;
###         p.fy[i] = 0.0f;
###         p.fz[i] = 0.0f;
###         p.ax[i] = 0.0f;
###         p.ay[i] = 0.0f;
###         p.az[i] = 0.0f;
###     }
### 
###     return;

        movq      16(%rsp), %r15                                #199.5 c1
..___tag_value__Z14particles_init14t_particles_DA.318:          #
        movq      24(%rsp), %r14                                #199.5 c1
..___tag_value__Z14particles_init14t_particles_DA.319:          #
        movq      32(%rsp), %r13                                #199.5 c5
..___tag_value__Z14particles_init14t_particles_DA.320:          #
        movq      40(%rsp), %r12                                #199.5 c5
..___tag_value__Z14particles_init14t_particles_DA.321:          #
        movq      48(%rsp), %rbx                                #199.5 c9
..___tag_value__Z14particles_init14t_particles_DA.322:          #
        movq      %rbp, %rsp                                    #199.5 c13
        popq      %rbp                                          #199.5
..___tag_value__Z14particles_init14t_particles_DA.323:          #
        ret                                                     #199.5
..___tag_value__Z14particles_init14t_particles_DA.325:          #
                                # LOE
L__Z14particles_init14t_particles_DA_181__par_loop0_2.249:
# parameter 1: %rdi
# parameter 2: %rsi
# parameter 3: %rdx
# parameter 4: %rcx
# parameter 5: %r8
# parameter 6: %r9
# parameter 7: 16 + %rbp
# parameter 8: 24 + %rbp
# parameter 9: 32 + %rbp
# parameter 10: 40 + %rbp
# parameter 11: 48 + %rbp
# parameter 12: 56 + %rbp
# parameter 13: 64 + %rbp
# parameter 14: 72 + %rbp
# parameter 15: 80 + %rbp
# parameter 16: 88 + %rbp
..B2.8:                         # Preds ..B2.0 Latency 57
        pushq     %rbp                                          #181.5
..___tag_value__Z14particles_init14t_particles_DA.327:          #
        movq      %rsp, %rbp                                    #181.5
..___tag_value__Z14particles_init14t_particles_DA.328:          #
        andq      $-64, %rsp                                    #181.5
        subq      $256, %rsp                                    #181.5 c1
        movl      (%rdi), %esi                                  #181.5 c1
        movl      $1105919, 68(%rsp)                            #181.5 c5
        xorl      %r10d, %r10d                                  #181.5 c9
        movl      $1, %edi                                      #181.5 c9
        movq      %rbx, 48(%rsp)                                #181.5 c13
..___tag_value__Z14particles_init14t_particles_DA.330:          #
        movq      %rdx, %rbx                                    #181.5 c13
        movq      %r15, 16(%rsp)                                #181.5 c17
        movl      $34, %edx                                     #181.5 c17
        movq      %r14, 24(%rsp)                                #181.5 c21
        xorl      %eax, %eax                                    #181.5 c21
        movq      %r13, 32(%rsp)                                #181.5 c25
        movq      %r12, 40(%rsp)                                #181.5 c25
        movl      %esi, 56(%rsp)                                #181.5 c29
        movl      %r10d, 64(%rsp)                               #181.5 c29
        movl      %r10d, 72(%rsp)                               #181.5 c33
        movl      %edi, 76(%rsp)                                #181.5 c33
        addq      $-32, %rsp                                    #181.5 c37
        lea       108(%rsp), %r11                               #181.5 c41
        lea       104(%rsp), %rcx                               #181.5 c41
        movq      %r11, (%rsp)                                  #181.5 c45
        lea       96(%rsp), %r8                                 #181.5 c45
        movl      %edi, 8(%rsp)                                 #181.5 c49
        lea       100(%rsp), %r9                                #181.5 c49
        movl      %edi, 16(%rsp)                                #181.5 c53
        lea       .2.6_2_kmpc_loc_struct_pack.251(%rip), %rdi   #181.5 c53
..___tag_value__Z14particles_init14t_particles_DA.331:          #181.5
        call      __kmpc_for_static_init_4u@PLT                 #181.5
..___tag_value__Z14particles_init14t_particles_DA.332:          #
                                # LOE rbx
..B2.33:                        # Preds ..B2.8 Latency 1
        addq      $32, %rsp                                     #181.5 c1
                                # LOE rbx
..B2.9:                         # Preds ..B2.33 Latency 9
        movl      64(%rsp), %r12d                               #181.5 c1
        movl      68(%rsp), %edi                                #181.5 c1
        cmpl      $1105919, 64(%rsp)                            #181.5 c5
        ja        ..B2.25       # Prob 50%                      #181.5 c9
                                # LOE rbx edi r12d
..B2.10:                        # Preds ..B2.9 Latency 9
        cmpl      $1105919, %edi                                #181.5 c1
        jb        ..L337        # Prob 50%                      #181.5 c5
        movl      $1105919, %edi                                #181.5
..L337:                                                         #
        cmpl      %r12d, %edi                                   #182.29 c9
        jb        ..B2.25       # Prob 50%                      #182.29 c9
                                # LOE rbx edi r12d
..B2.11:                        # Preds ..B2.10 Latency 53
        movq      40(%rbx), %rcx                                #189.9 c1
        movq      64(%rbx), %r14                                #192.9 c1
        movq      %rcx, 136(%rsp)                               #189.9 c5
        subl      %r12d, %edi                                   #182.5 c5
        movq      %r14, 112(%rsp)                               #192.9 c9
        movl      %r12d, %r14d                                  #196.9 c9
        movq      96(%rbx), %rcx                                #196.9 c13
        movq      88(%rbx), %r13                                #195.9 c13
        movq      %r13, 128(%rsp)                               #195.9 c17
        lea       (%rcx,%r14,4), %r13                           #196.9 c17
        andq      $63, %r13                                     #182.5 c21
        movq      24(%rbx), %rsi                                #187.9 c21
        movq      32(%rbx), %r8                                 #188.9 c25
        movq      72(%rbx), %rax                                #193.9 c25
        movq      80(%rbx), %rdx                                #194.9 c29
        incl      %edi                                          #182.5 c29
        movq      (%rbx), %r10                                  #184.9 c33
        movq      8(%rbx), %r11                                 #185.9 c33
        movq      16(%rbx), %r9                                 #186.9 c37
        movq      %rsi, 104(%rsp)                               #187.9 c37
        movq      %r8, 120(%rsp)                                #188.9 c41
        testl     %r13d, %r13d                                  #182.5 c41
        movq      48(%rbx), %r8                                 #190.9 c45
        movq      56(%rbx), %rsi                                #191.9 c45
        movq      %rax, 152(%rsp)                               #193.9 c49
        movq      %rdx, 144(%rsp)                               #194.9 c49
        je        ..B2.13       # Prob 50%                      #182.5 c53
                                # LOE rcx rsi r8 r9 r10 r11 r14 edi r12d r13d
..B2.12:                        # Preds ..B2.11 Latency 17
        negl      %r13d                                         #182.5 c1
        addl      $64, %r13d                                    #182.5 c5
        shrl      $2, %r13d                                     #182.5 c9
        cmpl      %r13d, %edi                                   #182.5 c13
        jge       ..L338        # Prob 50%                      #182.5 c17
        movl      %edi, %r13d                                   #182.5
..L338:                                                         #
                                # LOE rcx rsi r8 r9 r10 r11 r14 edi r12d r13d
..B2.13:                        # Preds ..B2.12 ..B2.11 Latency 21
        movl      %edi, %edx                                    #182.5 c1
        subl      %r13d, %edx                                   #182.5 c5
        andl      $15, %edx                                     #182.5 c9
        negl      %edx                                          #182.5 c13
        addl      %edi, %edx                                    #182.5 c17
        cmpl      $1, %r13d                                     #182.5 c21
        jb        ..B2.17       # Prob 50%                      #182.5 c21
                                # LOE rcx rsi r8 r9 r10 r11 r14 edx edi r12d r13d
..B2.14:                        # Preds ..B2.13 Latency 33
        movl      %r13d, (%rsp)                                 #182.5 c1
        xorl      %eax, %eax                                    #182.5 c1
        vpbroadcastd .L_2il0floatpacket.298(%rip), %zmm4        #182.5 c5
        vmovaps   .L_2il0floatpacket.299(%rip), %zmm3           #182.5 c9
        vpxord    %zmm2, %zmm2, %zmm2                           #184.22 c13
        movl      %edi, 80(%rsp)                                #182.5 c13
        movl      %edx, 88(%rsp)                                #182.5 c17
        movq      128(%rsp), %rbx                               #182.5 c17
        vpbroadcastd (%rsp), %zmm1                              #182.5 c21
        movl      %r13d, 96(%rsp)                               #182.5 c21
        movq      %r14, 8(%rsp)                                 #182.5 c25
        movq      144(%rsp), %rdi                               #182.5 c25
        vmovaps   .L_2il0floatpacket.300(%rip), %zmm0           #182.5 c29
        movq      152(%rsp), %r13                               #182.5 c33
        movq      136(%rsp), %r14                               #182.5 c33
                                # LOE rcx rbx rsi rdi r8 r9 r10 r11 r13 r14 eax r12d zmm0 zmm1 zmm2 zmm3 zmm4
..B2.15:                        # Preds ..B2.15 ..B2.14 Latency 225
        vpcmpud   $6, %zmm1, %zmm3, %k0                         #182.5 c1
        lea       (%r12,%rax), %edx                             #184.9 c1
        lea       (%r10,%rdx,4), %r15                           #184.9 c5
        addl      $16, %eax                                     #182.5 c5
        knot      %k0, %k1                                      #182.5 c9
        kmov      %k1, %k2                                      #184.9 c13
        kmov      %k1, %k3                                      #185.9 c13
..L340:                                                         #184.9
        vscatterdps %zmm2, (%r15,%zmm0,4){%k2}                  #184.9
        jkzd      ..L339, %k2   # Prob 50%                      #184.9
        vscatterdps %zmm2, (%r15,%zmm0,4){%k2}                  #184.9
        jknzd     ..L340, %k2   # Prob 50%                      #184.9
..L339:                                                         #
        kmov      %k1, %k4                                      #186.9 c25
        kmov      %k1, %k5                                      #187.9 c25
        lea       (%r11,%rdx,4), %r15                           #185.9 c29
        kmov      %k1, %k6                                      #188.9 c29
..L342:                                                         #185.9
        vscatterdps %zmm2, (%r15,%zmm0,4){%k3}                  #185.9
        jkzd      ..L341, %k3   # Prob 50%                      #185.9
        vscatterdps %zmm2, (%r15,%zmm0,4){%k3}                  #185.9
        jknzd     ..L342, %k3   # Prob 50%                      #185.9
..L341:                                                         #
        kmov      %k1, %k7                                      #189.9 c41
        kmov      %k1, %k2                                      #190.9 c41
        lea       (%r9,%rdx,4), %r15                            #186.9 c45
        kmov      %k1, %k3                                      #191.9 c45
..L344:                                                         #186.9
        vscatterdps %zmm2, (%r15,%zmm0,4){%k4}                  #186.9
        jkzd      ..L343, %k4   # Prob 50%                      #186.9
        vscatterdps %zmm2, (%r15,%zmm0,4){%k4}                  #186.9
        jknzd     ..L344, %k4   # Prob 50%                      #186.9
..L343:                                                         #
        vpaddd    %zmm4, %zmm3, %zmm3                           #196.9 c57
        movb      %al, %al                                      #187.9 c57
        movq      104(%rsp), %r15                               #187.9 c61
        kmov      %k1, %k4                                      #192.9 c61
        lea       (%r15,%rdx,4), %r15                           #187.9 c65
..L346:                                                         #187.9
        vscatterdps %zmm2, (%r15,%zmm0,4){%k5}                  #187.9
        jkzd      ..L345, %k5   # Prob 50%                      #187.9
        vscatterdps %zmm2, (%r15,%zmm0,4){%k5}                  #187.9
        jknzd     ..L346, %k5   # Prob 50%                      #187.9
..L345:                                                         #
        nop                                                     #188.9 c73
        movq      120(%rsp), %r15                               #188.9 c81
        lea       (%r15,%rdx,4), %r15                           #188.9 c85
        kmov      %k1, %k5                                      #193.9 c85
..L348:                                                         #188.9
        vscatterdps %zmm2, (%r15,%zmm0,4){%k6}                  #188.9
        jkzd      ..L347, %k6   # Prob 50%                      #188.9
        vscatterdps %zmm2, (%r15,%zmm0,4){%k6}                  #188.9
        jknzd     ..L348, %k6   # Prob 50%                      #188.9
..L347:                                                         #
        nop                                                     #189.9 c93
        lea       (%r14,%rdx,4), %r15                           #189.9 c101
..L350:                                                         #189.9
        vscatterdps %zmm2, (%r15,%zmm0,4){%k7}                  #189.9
        jkzd      ..L349, %k7   # Prob 50%                      #189.9
        vscatterdps %zmm2, (%r15,%zmm0,4){%k7}                  #189.9
        jknzd     ..L350, %k7   # Prob 50%                      #189.9
..L349:                                                         #
        kmov      %k1, %k6                                      #194.9 c113
        movb      %al, %al                                      #190.9 c113
        lea       (%r8,%rdx,4), %r15                            #190.9 c117
..L352:                                                         #190.9
        vscatterdps %zmm2, (%r15,%zmm0,4){%k2}                  #190.9
        jkzd      ..L351, %k2   # Prob 50%                      #190.9
        vscatterdps %zmm2, (%r15,%zmm0,4){%k2}                  #190.9
        jknzd     ..L352, %k2   # Prob 50%                      #190.9
..L351:                                                         #
        nop                                                     #191.9 c125
        lea       (%rsi,%rdx,4), %r15                           #191.9 c133
..L354:                                                         #191.9
        vscatterdps %zmm2, (%r15,%zmm0,4){%k3}                  #191.9
        jkzd      ..L353, %k3   # Prob 50%                      #191.9
        vscatterdps %zmm2, (%r15,%zmm0,4){%k3}                  #191.9
        jknzd     ..L354, %k3   # Prob 50%                      #191.9
..L353:                                                         #
        kmov      %k1, %k2                                      #195.9 c145
        movb      %al, %al                                      #192.9 c145
        movq      112(%rsp), %r15                               #192.9 c149
        lea       (%r15,%rdx,4), %r15                           #192.9 c153
..L356:                                                         #192.9
        vscatterdps %zmm2, (%r15,%zmm0,4){%k4}                  #192.9
        jkzd      ..L355, %k4   # Prob 50%                      #192.9
        vscatterdps %zmm2, (%r15,%zmm0,4){%k4}                  #192.9
        jknzd     ..L356, %k4   # Prob 50%                      #192.9
..L355:                                                         #
        nop                                                     #193.9 c161
        lea       (%r13,%rdx,4), %r15                           #193.9 c169
..L358:                                                         #193.9
        vscatterdps %zmm2, (%r15,%zmm0,4){%k5}                  #193.9
        jkzd      ..L357, %k5   # Prob 50%                      #193.9
        vscatterdps %zmm2, (%r15,%zmm0,4){%k5}                  #193.9
        jknzd     ..L358, %k5   # Prob 50%                      #193.9
..L357:                                                         #
        nop                                                     #194.9 c177
        lea       (%rdi,%rdx,4), %r15                           #194.9 c185
..L360:                                                         #194.9
        vscatterdps %zmm2, (%r15,%zmm0,4){%k6}                  #194.9
        jkzd      ..L359, %k6   # Prob 50%                      #194.9
        vscatterdps %zmm2, (%r15,%zmm0,4){%k6}                  #194.9
        jknzd     ..L360, %k6   # Prob 50%                      #194.9
..L359:                                                         #
        nop                                                     #195.9 c193
        lea       (%rbx,%rdx,4), %r15                           #195.9 c201
        lea       (%rcx,%rdx,4), %rdx                           #196.9 c201
..L362:                                                         #195.9
        vscatterdps %zmm2, (%r15,%zmm0,4){%k2}                  #195.9
        jkzd      ..L361, %k2   # Prob 50%                      #195.9
        vscatterdps %zmm2, (%r15,%zmm0,4){%k2}                  #195.9
        jknzd     ..L362, %k2   # Prob 50%                      #195.9
..L361:                                                         #
..L364:                                                         #196.9
        vscatterdps %zmm2, (%rdx,%zmm0,4){%k1}                  #196.9
        jkzd      ..L363, %k1   # Prob 50%                      #196.9
        vscatterdps %zmm2, (%rdx,%zmm0,4){%k1}                  #196.9
        jknzd     ..L364, %k1   # Prob 50%                      #196.9
..L363:                                                         #
        cmpl      96(%rsp), %eax                                #182.5 c221
        jb        ..B2.15       # Prob 99%                      #182.5 c225
                                # LOE rcx rbx rsi rdi r8 r9 r10 r11 r13 r14 eax r12d zmm0 zmm1 zmm2 zmm3 zmm4
..B2.16:                        # Preds ..B2.15 Latency 9
        movl      80(%rsp), %edi                                # c1
        movl      96(%rsp), %r13d                               # c1
        movl      88(%rsp), %edx                                # c5
        cmpl      %r13d, %edi                                   #182.5 c5
        movq      8(%rsp), %r14                                 # c9
        je        ..B2.25       # Prob 50%                      #182.5 c9
                                # LOE rcx rsi r8 r9 r10 r11 r14 edx edi r12d r13d
..B2.17:                        # Preds ..B2.13 ..B2.16 Latency 5
        lea       16(%r13), %eax                                #182.5 c1
        cmpl      %eax, %edx                                    #182.5 c5
        jl        ..B2.21       # Prob 50%                      #182.5 c5
                                # LOE rcx rsi r8 r9 r10 r11 r14 edx edi r12d r13d
..B2.18:                        # Preds ..B2.17 Latency 41
        lea       16(%r12), %ebx                                #182.5 c1
        vprefetche0 (%r10,%r14,4)                               #182.5 c1
        lea       32(%r12), %r15d                               #182.5 c5
        vprefetche0 (%r10,%rbx,4)                               #182.5 c5
        lea       (%r12,%r13), %eax                             # c9
        vprefetche0 (%r10,%r15,4)                               #182.5 c9
        vpxord    %zmm0, %zmm0, %zmm0                           #184.22 c13
        vprefetche0 (%r11,%r14,4)                               #182.5 c13
        vprefetche0 (%r11,%rbx,4)                               #182.5 c17
        movb      %al, %al                                      #182.5 c17
        vprefetche0 (%r11,%r15,4)                               #182.5 c21
        movb      %al, %al                                      #184.22 c21
        movl      %r12d, 8(%rsp)                                #184.22 c25
        movl      %edi, 80(%rsp)                                #184.22 c25
        movl      %edx, 88(%rsp)                                #184.22 c29
        movl      %r13d, 96(%rsp)                               #184.22 c29
        movq      %rcx, 160(%rsp)                               #184.22 c33
        movq      %rsi, 184(%rsp)                               #184.22 c33
        movq      %r8, 168(%rsp)                                #184.22 c37
        movq      %r9, 192(%rsp)                                #184.22 c37
        movq      %r11, 176(%rsp)                               #184.22 c41
        movq      %r10, 200(%rsp)                               #184.22 c41
                                # LOE rax zmm0
..B2.19:                        # Preds ..B2.19 ..B2.18 Latency 221
        movq      200(%rsp), %r15                               #184.9 c1
        movl      %eax, 208(%rsp)                               # c1
        vpackstoreld %zmm0, (%r15,%rax,4)                       #184.9 c5
        movq      176(%rsp), %rdx                               #185.9 c5
        movq      192(%rsp), %rcx                               #186.9 c9
        vpackstorehd %zmm0, 64(%r15,%rax,4)                     #184.9 c9
        vpackstoreld %zmm0, (%rdx,%rax,4)                       #185.9 c13
        movq      104(%rsp), %rbx                               #187.9 c13
        movq      120(%rsp), %rsi                               #188.9 c17
        vpackstorehd %zmm0, 64(%rdx,%rax,4)                     #185.9 c17
        vpackstoreld %zmm0, (%rcx,%rax,4)                       #186.9 c21
        movq      136(%rsp), %rdi                               #189.9 c21
        movq      168(%rsp), %r8                                #190.9 c25
        vpackstorehd %zmm0, 64(%rcx,%rax,4)                     #186.9 c25
        vpackstoreld %zmm0, (%rbx,%rax,4)                       #187.9 c29
        movq      184(%rsp), %r9                                #191.9 c29
        movq      112(%rsp), %r10                               #192.9 c33
        vpackstorehd %zmm0, 64(%rbx,%rax,4)                     #187.9 c33
        vpackstoreld %zmm0, (%rsi,%rax,4)                       #188.9 c37
        movq      152(%rsp), %r11                               #193.9 c37
        movq      144(%rsp), %r12                               #194.9 c41
        vpackstorehd %zmm0, 64(%rsi,%rax,4)                     #188.9 c41
        vpackstoreld %zmm0, (%rdi,%rax,4)                       #189.9 c45
        movq      128(%rsp), %r13                               #195.9 c45
        vpackstorehd %zmm0, 64(%rdi,%rax,4)                     #189.9 c49
        vpackstoreld %zmm0, (%r8,%rax,4)                        #190.9 c53
        movq      160(%rsp), %r14                               #196.9 c53
        vpackstorehd %zmm0, 64(%r8,%rax,4)                      #190.9 c57
        vpackstoreld %zmm0, (%r9,%rax,4)                        #191.9 c61
        vpackstorehd %zmm0, 64(%r9,%rax,4)                      #191.9 c65
        vpackstoreld %zmm0, (%r10,%rax,4)                       #192.9 c69
        vpackstorehd %zmm0, 64(%r10,%rax,4)                     #192.9 c73
        vpackstoreld %zmm0, (%r11,%rax,4)                       #193.9 c77
        vpackstorehd %zmm0, 64(%r11,%rax,4)                     #193.9 c81
        vpackstoreld %zmm0, (%r12,%rax,4)                       #194.9 c85
        vpackstorehd %zmm0, 64(%r12,%rax,4)                     #194.9 c89
        vpackstoreld %zmm0, (%r13,%rax,4)                       #195.9 c93
        vpackstorehd %zmm0, 64(%r13,%rax,4)                     #195.9 c97
        vmovaps   %zmm0, (%r14,%rax,4)                          #196.9 c101
        lea       128(%rax), %r14d                              #184.9 c101
        lea       48(%rax), %eax                                #184.9 c105
        vprefetche1 (%r15,%r14,4)                               #184.9 c105
        vprefetche0 (%r15,%rax,4)                               #184.9 c109
        movb      %cl, %cl                                      #185.9 c109
        vprefetche1 (%rdx,%r14,4)                               #185.9 c113
        movb      %cl, %cl                                      #185.9 c113
        vprefetche0 (%rdx,%rax,4)                               #185.9 c117
        movb      %bl, %bl                                      #196.9 c117
        movq      160(%rsp), %rdx                               #196.9 c121
        vprefetche1 (%rcx,%r14,4)                               #186.9 c121
        vprefetche0 (%rcx,%rax,4)                               #186.9 c125
        movb      %dl, %dl                                      #182.5 c125
        movl      96(%rsp), %ecx                                #182.5 c129
        vprefetche1 (%rbx,%r14,4)                               #187.9 c129
        vprefetche0 (%rbx,%rax,4)                               #187.9 c133
        addl      $16, %ecx                                     #182.5 c133
        vprefetche1 (%rsi,%r14,4)                               #188.9 c137
        movb      %dl, %dl                                      #188.9 c137
        vprefetche0 (%rsi,%rax,4)                               #188.9 c141
        movb      %dl, %dl                                      #189.9 c141
        vprefetche1 (%rdi,%r14,4)                               #189.9 c145
        movb      %dl, %dl                                      #189.9 c145
        vprefetche0 (%rdi,%rax,4)                               #189.9 c149
        movb      %dl, %dl                                      #190.9 c149
        vprefetche1 (%r8,%r14,4)                                #190.9 c153
        movb      %dl, %dl                                      #190.9 c153
        vprefetche0 (%r8,%rax,4)                                #190.9 c157
        movb      %dl, %dl                                      #191.9 c157
        vprefetche1 (%r9,%r14,4)                                #191.9 c161
        movb      %dl, %dl                                      #191.9 c161
        vprefetche0 (%r9,%rax,4)                                #191.9 c165
        movb      %dl, %dl                                      #192.9 c165
        vprefetche1 (%r10,%r14,4)                               #192.9 c169
        movb      %dl, %dl                                      #192.9 c169
        vprefetche0 (%r10,%rax,4)                               #192.9 c173
        movb      %dl, %dl                                      #193.9 c173
        vprefetche1 (%r11,%r14,4)                               #193.9 c177
        movb      %dl, %dl                                      #193.9 c177
        vprefetche0 (%r11,%rax,4)                               #193.9 c181
        movb      %dl, %dl                                      #194.9 c181
        vprefetche1 (%r12,%r14,4)                               #194.9 c185
        movb      %dl, %dl                                      #194.9 c185
        vprefetche0 (%r12,%rax,4)                               #194.9 c189
        movb      %dl, %dl                                      #195.9 c189
        vprefetche1 (%r13,%r14,4)                               #195.9 c193
        movb      %dl, %dl                                      #195.9 c193
        vprefetche0 (%r13,%rax,4)                               #195.9 c197
        movb      %cl, %cl                                      #196.9 c197
        vprefetche1 (%rdx,%r14,4)                               #196.9 c201
        movb      %cl, %cl                                      #196.9 c201
        vprefetche0 (%rdx,%rax,4)                               #196.9 c205
        movb      %bl, %bl                                      #182.5 c205
        movl      208(%rsp), %eax                               #182.5 c209
        movl      %ecx, 96(%rsp)                                #182.5 c209
        addl      $16, %eax                                     #182.5 c213
        cmpl      88(%rsp), %ecx                                #182.5 c217
        jb        ..B2.19       # Prob 99%                      #182.5 c221
                                # LOE rax zmm0
..B2.20:                        # Preds ..B2.19 Latency 17
        movl      8(%rsp), %r12d                                # c1
        movl      80(%rsp), %edi                                # c1
        movl      88(%rsp), %edx                                # c5
        movq      160(%rsp), %rcx                               # c5
        movq      184(%rsp), %rsi                               # c9
        movq      168(%rsp), %r8                                # c9
        movq      192(%rsp), %r9                                # c13
        movq      176(%rsp), %r11                               # c13
        movq      200(%rsp), %r10                               # c17
                                # LOE rcx rsi r8 r9 r10 r11 edx edi r12d
..B2.21:                        # Preds ..B2.20 ..B2.17 Latency 5
        lea       1(%rdx), %eax                                 #182.5 c1
        cmpl      %eax, %edi                                    #182.5 c5
        jb        ..B2.25       # Prob 50%                      #182.5 c5
                                # LOE rcx rsi r8 r9 r10 r11 edx edi r12d
..B2.22:                        # Preds ..B2.21 Latency 37
        subl      %edx, %edi                                    #182.5 c1
        xorl      %eax, %eax                                    #182.5 c1
        movl      %edi, (%rsp)                                  #182.5 c5
        addl      %edx, %r12d                                   #184.9 c5
        vpbroadcastd .L_2il0floatpacket.298(%rip), %zmm4        #182.5 c9
        vmovaps   .L_2il0floatpacket.299(%rip), %zmm3           #182.5 c13
        vpxord    %zmm2, %zmm2, %zmm2                           #184.22 c17
        movl      %edi, 80(%rsp)                                #184.9 c17
        movq      %r11, 176(%rsp)                               #184.9 c21
        movq      128(%rsp), %rbx                               #184.9 c21
        vpbroadcastd (%rsp), %zmm1                              #182.5 c25
        vmovaps   .L_2il0floatpacket.300(%rip), %zmm0           #184.9 c29
        movq      144(%rsp), %rdi                               #184.9 c33
        movq      136(%rsp), %r11                               #184.9 c33
        movq      120(%rsp), %r13                               #184.9 c37
        movq      104(%rsp), %r14                               #184.9 c37
                                # LOE rcx rbx rsi rdi r8 r9 r10 r11 r13 r14 eax r12d zmm0 zmm1 zmm2 zmm3 zmm4
..B2.23:                        # Preds ..B2.23 ..B2.22 Latency 217
        vpcmpud   $6, %zmm1, %zmm3, %k0                         #182.5 c1
        lea       (%r12,%rax), %edx                             #184.9 c1
        lea       (%r10,%rdx,4), %r15                           #184.9 c5
        addl      $16, %eax                                     #182.5 c5
        knot      %k0, %k1                                      #182.5 c9
        kmov      %k1, %k2                                      #184.9 c13
        kmov      %k1, %k3                                      #185.9 c13
..L366:                                                         #184.9
        vscatterdps %zmm2, (%r15,%zmm0,4){%k2}                  #184.9
        jkzd      ..L365, %k2   # Prob 50%                      #184.9
        vscatterdps %zmm2, (%r15,%zmm0,4){%k2}                  #184.9
        jknzd     ..L366, %k2   # Prob 50%                      #184.9
..L365:                                                         #
        kmov      %k1, %k4                                      #186.9 c25
        kmov      %k1, %k5                                      #187.9 c25
        movq      176(%rsp), %r15                               #185.9 c29
        kmov      %k1, %k6                                      #188.9 c29
        lea       (%r15,%rdx,4), %r15                           #185.9 c33
        kmov      %k1, %k7                                      #189.9 c33
..L368:                                                         #185.9
        vscatterdps %zmm2, (%r15,%zmm0,4){%k3}                  #185.9
        jkzd      ..L367, %k3   # Prob 50%                      #185.9
        vscatterdps %zmm2, (%r15,%zmm0,4){%k3}                  #185.9
        jknzd     ..L368, %k3   # Prob 50%                      #185.9
..L367:                                                         #
        kmov      %k1, %k2                                      #190.9 c45
        vpaddd    %zmm4, %zmm3, %zmm3                           #196.9 c49
        lea       (%r9,%rdx,4), %r15                            #186.9 c49
..L370:                                                         #186.9
        vscatterdps %zmm2, (%r15,%zmm0,4){%k4}                  #186.9
        jkzd      ..L369, %k4   # Prob 50%                      #186.9
        vscatterdps %zmm2, (%r15,%zmm0,4){%k4}                  #186.9
        jknzd     ..L370, %k4   # Prob 50%                      #186.9
..L369:                                                         #
        kmov      %k1, %k3                                      #191.9 c61
        movb      %al, %al                                      #187.9 c61
        lea       (%r14,%rdx,4), %r15                           #187.9 c65
        kmov      %k1, %k4                                      #192.9 c65
..L372:                                                         #187.9
        vscatterdps %zmm2, (%r15,%zmm0,4){%k5}                  #187.9
        jkzd      ..L371, %k5   # Prob 50%                      #187.9
        vscatterdps %zmm2, (%r15,%zmm0,4){%k5}                  #187.9
        jknzd     ..L372, %k5   # Prob 50%                      #187.9
..L371:                                                         #
        nop                                                     #188.9 c73
        lea       (%r13,%rdx,4), %r15                           #188.9 c81
..L374:                                                         #188.9
        vscatterdps %zmm2, (%r15,%zmm0,4){%k6}                  #188.9
        jkzd      ..L373, %k6   # Prob 50%                      #188.9
        vscatterdps %zmm2, (%r15,%zmm0,4){%k6}                  #188.9
        jknzd     ..L374, %k6   # Prob 50%                      #188.9
..L373:                                                         #
        kmov      %k1, %k5                                      #193.9 c93
        movb      %al, %al                                      #189.9 c93
        lea       (%r11,%rdx,4), %r15                           #189.9 c97
        kmov      %k1, %k6                                      #194.9 c97
..L376:                                                         #189.9
        vscatterdps %zmm2, (%r15,%zmm0,4){%k7}                  #189.9
        jkzd      ..L375, %k7   # Prob 50%                      #189.9
        vscatterdps %zmm2, (%r15,%zmm0,4){%k7}                  #189.9
        jknzd     ..L376, %k7   # Prob 50%                      #189.9
..L375:                                                         #
        nop                                                     #190.9 c105
        lea       (%r8,%rdx,4), %r15                            #190.9 c113
..L378:                                                         #190.9
        vscatterdps %zmm2, (%r15,%zmm0,4){%k2}                  #190.9
        jkzd      ..L377, %k2   # Prob 50%                      #190.9
        vscatterdps %zmm2, (%r15,%zmm0,4){%k2}                  #190.9
        jknzd     ..L378, %k2   # Prob 50%                      #190.9
..L377:                                                         #
        nop                                                     #191.9 c121
        lea       (%rsi,%rdx,4), %r15                           #191.9 c129
..L380:                                                         #191.9
        vscatterdps %zmm2, (%r15,%zmm0,4){%k3}                  #191.9
        jkzd      ..L379, %k3   # Prob 50%                      #191.9
        vscatterdps %zmm2, (%r15,%zmm0,4){%k3}                  #191.9
        jknzd     ..L380, %k3   # Prob 50%                      #191.9
..L379:                                                         #
        kmov      %k1, %k2                                      #195.9 c141
        movb      %al, %al                                      #192.9 c141
        movq      112(%rsp), %r15                               #192.9 c145
        lea       (%r15,%rdx,4), %r15                           #192.9 c149
..L382:                                                         #192.9
        vscatterdps %zmm2, (%r15,%zmm0,4){%k4}                  #192.9
        jkzd      ..L381, %k4   # Prob 50%                      #192.9
        vscatterdps %zmm2, (%r15,%zmm0,4){%k4}                  #192.9
        jknzd     ..L382, %k4   # Prob 50%                      #192.9
..L381:                                                         #
        nop                                                     #193.9 c157
        movq      152(%rsp), %r15                               #193.9 c165
        lea       (%r15,%rdx,4), %r15                           #193.9 c169
..L384:                                                         #193.9
        vscatterdps %zmm2, (%r15,%zmm0,4){%k5}                  #193.9
        jkzd      ..L383, %k5   # Prob 50%                      #193.9
        vscatterdps %zmm2, (%r15,%zmm0,4){%k5}                  #193.9
        jknzd     ..L384, %k5   # Prob 50%                      #193.9
..L383:                                                         #
        nop                                                     #194.9 c177
        lea       (%rdi,%rdx,4), %r15                           #194.9 c185
..L386:                                                         #194.9
        vscatterdps %zmm2, (%r15,%zmm0,4){%k6}                  #194.9
        jkzd      ..L385, %k6   # Prob 50%                      #194.9
        vscatterdps %zmm2, (%r15,%zmm0,4){%k6}                  #194.9
        jknzd     ..L386, %k6   # Prob 50%                      #194.9
..L385:                                                         #
        nop                                                     #195.9 c193
        lea       (%rbx,%rdx,4), %r15                           #195.9 c201
..L388:                                                         #195.9
        vscatterdps %zmm2, (%r15,%zmm0,4){%k2}                  #195.9
        jkzd      ..L387, %k2   # Prob 50%                      #195.9
        vscatterdps %zmm2, (%r15,%zmm0,4){%k2}                  #195.9
        jknzd     ..L388, %k2   # Prob 50%                      #195.9
..L387:                                                         #
        vmovaps   %zmm2, (%rcx,%rdx,4){%k1}                     #196.9 c213
        cmpl      80(%rsp), %eax                                #182.5 c213
        jb        ..B2.23       # Prob 99%                      #182.5 c217
                                # LOE rcx rbx rsi rdi r8 r9 r10 r11 r13 r14 eax r12d zmm0 zmm1 zmm2 zmm3 zmm4
..B2.25:                        # Preds ..B2.23 ..B2.21 ..B2.16 ..B2.9 ..B2.10
                                #       Latency 9
        lea       .2.6_2_kmpc_loc_struct_pack.251(%rip), %rdi   #181.5 c1
        movl      56(%rsp), %esi                                #181.5 c1
        xorl      %eax, %eax                                    #181.5 c5
..___tag_value__Z14particles_init14t_particles_DA.389:          #181.5
        call      __kmpc_for_static_fini@PLT                    #181.5
..___tag_value__Z14particles_init14t_particles_DA.390:          #
                                # LOE
..B2.26:                        # Preds ..B2.25 Latency 13
        movq      16(%rsp), %r15                                #181.5 c1
..___tag_value__Z14particles_init14t_particles_DA.391:          #
        movq      24(%rsp), %r14                                #181.5 c1
..___tag_value__Z14particles_init14t_particles_DA.392:          #
        movq      32(%rsp), %r13                                #181.5 c5
..___tag_value__Z14particles_init14t_particles_DA.393:          #
        movq      40(%rsp), %r12                                #181.5 c5
..___tag_value__Z14particles_init14t_particles_DA.394:          #
        movq      48(%rsp), %rbx                                #181.5 c9
..___tag_value__Z14particles_init14t_particles_DA.395:          #
        movq      %rbp, %rsp                                    #181.5 c13
        popq      %rbp                                          #181.5
..___tag_value__Z14particles_init14t_particles_DA.396:          #
        ret                                                     #181.5
        .align    16,0x90
..___tag_value__Z14particles_init14t_particles_DA.398:          #
                                # LOE
# mark_end;
	.type	_Z14particles_init14t_particles_DA,@function
	.size	_Z14particles_init14t_particles_DA,.-_Z14particles_init14t_particles_DA
	.section .gcc_except_table, "a"
	.align 4
_Z14particles_init14t_particles_DA$$LSDA:
	.byte	255
	.byte	155
	.uleb128	..___tag_value__Z14particles_init14t_particles_DA.402 - ..___tag_value__Z14particles_init14t_particles_DA.401
..___tag_value__Z14particles_init14t_particles_DA.401:
	.byte	1
	.uleb128	..___tag_value__Z14particles_init14t_particles_DA.400 - ..___tag_value__Z14particles_init14t_particles_DA.399
..___tag_value__Z14particles_init14t_particles_DA.399:
..___tag_value__Z14particles_init14t_particles_DA.400:
	.long	0
..___tag_value__Z14particles_init14t_particles_DA.402:
	.data
	.space 3, 0x00 	# pad
	.align 4
.2.6_2_kmpc_loc_struct_pack.242:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.6_2__kmpc_loc_pack.241
	.align 4
.2.6_2__kmpc_loc_pack.241:
	.byte	59
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	59
	.byte	112
	.byte	97
	.byte	114
	.byte	116
	.byte	105
	.byte	99
	.byte	108
	.byte	101
	.byte	115
	.byte	95
	.byte	105
	.byte	110
	.byte	105
	.byte	116
	.byte	59
	.byte	49
	.byte	56
	.byte	49
	.byte	59
	.byte	49
	.byte	56
	.byte	49
	.byte	59
	.byte	59
	.space 3, 0x00 	# pad
	.align 4
.2.6_2_kmpc_loc_struct_pack.251:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.6_2__kmpc_loc_pack.250
	.align 4
.2.6_2__kmpc_loc_pack.250:
	.byte	59
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	59
	.byte	112
	.byte	97
	.byte	114
	.byte	116
	.byte	105
	.byte	99
	.byte	108
	.byte	101
	.byte	115
	.byte	95
	.byte	105
	.byte	110
	.byte	105
	.byte	116
	.byte	59
	.byte	49
	.byte	56
	.byte	49
	.byte	59
	.byte	49
	.byte	57
	.byte	55
	.byte	59
	.byte	59
	.data
# -- End  _Z14particles_init14t_particles_DA, L__Z14particles_init14t_particles_DA_181__par_loop0_2.249
	.bss
	.align 4
	.align 4
___kmpv_zero_Z18particles_simulate14t_particles_DA_0:
	.type	___kmpv_zero_Z18particles_simulate14t_particles_DA_0,@object
	.size	___kmpv_zero_Z18particles_simulate14t_particles_DA_0,4
	.space 4	# pad
	.align 4
___kmpv_zero_Z18particles_simulate14t_particles_DA_1:
	.type	___kmpv_zero_Z18particles_simulate14t_particles_DA_1,@object
	.size	___kmpv_zero_Z18particles_simulate14t_particles_DA_1,4
	.space 4	# pad
	.align 4
___kmpv_zero_Z18particles_simulate14t_particles_DA_2:
	.type	___kmpv_zero_Z18particles_simulate14t_particles_DA_2,@object
	.size	___kmpv_zero_Z18particles_simulate14t_particles_DA_2,4
	.space 4	# pad
	.align 4
___kmpv_zero_Z18particles_simulate14t_particles_DA_3:
	.type	___kmpv_zero_Z18particles_simulate14t_particles_DA_3,@object
	.size	___kmpv_zero_Z18particles_simulate14t_particles_DA_3,4
	.space 4	# pad
	.align 4
___kmpv_zero_Z18particles_simulate14t_particles_DA_4:
	.type	___kmpv_zero_Z18particles_simulate14t_particles_DA_4,@object
	.size	___kmpv_zero_Z18particles_simulate14t_particles_DA_4,4
	.space 4	# pad
	.align 4
___kmpv_zero_Z14particles_init14t_particles_DA_0:
	.type	___kmpv_zero_Z14particles_init14t_particles_DA_0,@object
	.size	___kmpv_zero_Z14particles_init14t_particles_DA_0,4
	.space 4	# pad
	.section .rodata, "a"
	.align 64
	.align 64
.L_2il0floatpacket.224:
	.long	0x00000001,0x00000002,0x00000003,0x00000004,0x00000005,0x00000006,0x00000007,0x00000008,0x00000009,0x0000000a,0x0000000b,0x0000000c,0x0000000d,0x0000000e,0x0000000f,0x00000010
	.type	.L_2il0floatpacket.224,@object
	.size	.L_2il0floatpacket.224,64
	.align 64
.L_2il0floatpacket.226:
	.long	0x00000000,0x00000001,0x00000002,0x00000003,0x00000004,0x00000005,0x00000006,0x00000007,0x00000008,0x00000009,0x0000000a,0x0000000b,0x0000000c,0x0000000d,0x0000000e,0x0000000f
	.type	.L_2il0floatpacket.226,@object
	.size	.L_2il0floatpacket.226,64
	.align 64
.L_2il0floatpacket.299:
	.long	0x00000001,0x00000002,0x00000003,0x00000004,0x00000005,0x00000006,0x00000007,0x00000008,0x00000009,0x0000000a,0x0000000b,0x0000000c,0x0000000d,0x0000000e,0x0000000f,0x00000010
	.type	.L_2il0floatpacket.299,@object
	.size	.L_2il0floatpacket.299,64
	.align 64
.L_2il0floatpacket.300:
	.long	0x00000000,0x00000001,0x00000002,0x00000003,0x00000004,0x00000005,0x00000006,0x00000007,0x00000008,0x00000009,0x0000000a,0x0000000b,0x0000000c,0x0000000d,0x0000000e,0x0000000f
	.type	.L_2il0floatpacket.300,@object
	.size	.L_2il0floatpacket.300,64
	.align 16
.L_2il0floatpacket.227:
	.long	0x3f800000,0x80000000,0x00000000,0x00000000
	.type	.L_2il0floatpacket.227,@object
	.size	.L_2il0floatpacket.227,16
	.align 4
.L_2il0floatpacket.221:
	.long	0x3089705f
	.type	.L_2il0floatpacket.221,@object
	.size	.L_2il0floatpacket.221,4
	.align 4
.L_2il0floatpacket.222:
	.long	0x2e92c261
	.type	.L_2il0floatpacket.222,@object
	.size	.L_2il0floatpacket.222,4
	.align 4
.L_2il0floatpacket.223:
	.long	0x00000010
	.type	.L_2il0floatpacket.223,@object
	.size	.L_2il0floatpacket.223,4
	.align 4
.L_2il0floatpacket.225:
	.long	0x3a83126f
	.type	.L_2il0floatpacket.225,@object
	.size	.L_2il0floatpacket.225,4
	.align 4
.L_2il0floatpacket.228:
	.long	0x00028b45
	.type	.L_2il0floatpacket.228,@object
	.size	.L_2il0floatpacket.228,4
	.align 4
.L_2il0floatpacket.229:
	.long	0x00018842
	.type	.L_2il0floatpacket.229,@object
	.size	.L_2il0floatpacket.229,4
	.align 4
.L_2il0floatpacket.298:
	.long	0x00000010
	.type	.L_2il0floatpacket.298,@object
	.size	.L_2il0floatpacket.298,4
	.data
# mark_proc_addr_taken L__Z14particles_init14t_particles_DA_181__par_loop0_2.249;
# mark_proc_addr_taken L__Z18particles_simulate14t_particles_DA_285__par_loop4_2.151;
# mark_proc_addr_taken L__Z18particles_simulate14t_particles_DA_273__par_loop3_2.126;
# mark_proc_addr_taken L__Z18particles_simulate14t_particles_DA_262__par_loop2_2.100;
# mark_proc_addr_taken L__Z18particles_simulate14t_particles_DA_224__par_loop1_2.67;
# mark_proc_addr_taken L__Z18particles_simulate14t_particles_DA_213__par_loop0_2.45;
	.section .note.GNU-stack, ""
	.weak DW.ref.__gxx_personality_v0
	.hidden DW.ref.__gxx_personality_v0
	.type	DW.ref.__gxx_personality_v0,@object
	.size	DW.ref.__gxx_personality_v0,8
// -- Begin DWARF2 SEGMENT .eh_frame
	.section .eh_frame,"a",@progbits
.eh_frame_seg:
	.align 1
	.4byte 0x0000001c
	.8byte 0x4c507a0100000000
	.4byte 0x78010052
	.2byte 0x0710
	.byte 0x9b
	.4byte DW.ref.__gxx_personality_v0-.
	.8byte 0x00019008070c1b1b
	.byte 0x00
	.4byte 0x0000043c
	.4byte 0x00000024
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.1-.
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.293-..___tag_value__Z18particles_simulate14t_particles_DA.1
	.byte 0x04
	.4byte _Z18particles_simulate14t_particles_DA$$LSDA-.
	.byte 0x04
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.3-..___tag_value__Z18particles_simulate14t_particles_DA.1
	.2byte 0x100e
	.byte 0x04
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.4-..___tag_value__Z18particles_simulate14t_particles_DA.3
	.4byte 0x8610060c
	.2byte 0x0402
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.6-..___tag_value__Z18particles_simulate14t_particles_DA.4
	.8byte 0xffc00d1c380e0310
	.8byte 0xffffffd00d1affff
	.8byte 0xc00d1c380e0c1022
	.8byte 0xffffc80d1affffff
	.8byte 0x0d1c380e0d1022ff
	.8byte 0xffc00d1affffffc0
	.8byte 0x1c380e0e1022ffff
	.8byte 0xb80d1affffffc00d
	.8byte 0x380e0f1022ffffff
	.8byte 0x0d1affffffc00d1c
	.4byte 0xffffffb0
	.2byte 0x0422
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.61-..___tag_value__Z18particles_simulate14t_particles_DA.6
	.2byte 0x04cf
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.62-..___tag_value__Z18particles_simulate14t_particles_DA.61
	.2byte 0x04ce
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.63-..___tag_value__Z18particles_simulate14t_particles_DA.62
	.2byte 0x04cd
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.64-..___tag_value__Z18particles_simulate14t_particles_DA.63
	.2byte 0x04cc
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.65-..___tag_value__Z18particles_simulate14t_particles_DA.64
	.2byte 0x04c3
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.66-..___tag_value__Z18particles_simulate14t_particles_DA.65
	.4byte 0xc608070c
	.byte 0x04
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.68-..___tag_value__Z18particles_simulate14t_particles_DA.66
	.4byte 0x0410060c
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.70-..___tag_value__Z18particles_simulate14t_particles_DA.68
	.4byte 0x0410070c
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.71-..___tag_value__Z18particles_simulate14t_particles_DA.70
	.4byte 0x8610060c
	.2byte 0x0402
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.73-..___tag_value__Z18particles_simulate14t_particles_DA.71
	.8byte 0xffc00d1c380e0d10
	.8byte 0xffffffc00d1affff
	.2byte 0x0422
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.74-..___tag_value__Z18particles_simulate14t_particles_DA.73
	.8byte 0xffc00d1c380e0310
	.8byte 0xffffffd00d1affff
	.2byte 0x0422
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.75-..___tag_value__Z18particles_simulate14t_particles_DA.74
	.8byte 0xffc00d1c380e0c10
	.8byte 0xffffffc80d1affff
	.8byte 0xc00d1c380e0e1022
	.8byte 0xffffb80d1affffff
	.8byte 0x0d1c380e0f1022ff
	.8byte 0xffb00d1affffffc0
	.4byte 0x0422ffff
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.102-..___tag_value__Z18particles_simulate14t_particles_DA.75
	.2byte 0x04cf
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.103-..___tag_value__Z18particles_simulate14t_particles_DA.102
	.2byte 0x04ce
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.104-..___tag_value__Z18particles_simulate14t_particles_DA.103
	.2byte 0x04cd
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.105-..___tag_value__Z18particles_simulate14t_particles_DA.104
	.2byte 0x04cc
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.106-..___tag_value__Z18particles_simulate14t_particles_DA.105
	.2byte 0x04c3
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.107-..___tag_value__Z18particles_simulate14t_particles_DA.106
	.4byte 0xc608070c
	.byte 0x04
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.109-..___tag_value__Z18particles_simulate14t_particles_DA.107
	.4byte 0x0410060c
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.111-..___tag_value__Z18particles_simulate14t_particles_DA.109
	.4byte 0x0410070c
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.112-..___tag_value__Z18particles_simulate14t_particles_DA.111
	.4byte 0x8610060c
	.2byte 0x0402
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.114-..___tag_value__Z18particles_simulate14t_particles_DA.112
	.8byte 0xffc00d1c380e0d10
	.8byte 0xffffffc00d1affff
	.2byte 0x0422
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.115-..___tag_value__Z18particles_simulate14t_particles_DA.114
	.8byte 0xffc00d1c380e0310
	.8byte 0xffffffd00d1affff
	.2byte 0x0422
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.116-..___tag_value__Z18particles_simulate14t_particles_DA.115
	.8byte 0xffc00d1c380e0c10
	.8byte 0xffffffc80d1affff
	.8byte 0xc00d1c380e0e1022
	.8byte 0xffffb80d1affffff
	.8byte 0x0d1c380e0f1022ff
	.8byte 0xffb00d1affffffc0
	.4byte 0x0422ffff
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.143-..___tag_value__Z18particles_simulate14t_particles_DA.116
	.2byte 0x04cf
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.144-..___tag_value__Z18particles_simulate14t_particles_DA.143
	.2byte 0x04ce
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.145-..___tag_value__Z18particles_simulate14t_particles_DA.144
	.2byte 0x04cd
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.146-..___tag_value__Z18particles_simulate14t_particles_DA.145
	.2byte 0x04cc
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.147-..___tag_value__Z18particles_simulate14t_particles_DA.146
	.2byte 0x04c3
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.148-..___tag_value__Z18particles_simulate14t_particles_DA.147
	.4byte 0xc608070c
	.byte 0x04
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.150-..___tag_value__Z18particles_simulate14t_particles_DA.148
	.4byte 0x0410060c
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.152-..___tag_value__Z18particles_simulate14t_particles_DA.150
	.4byte 0x0410070c
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.153-..___tag_value__Z18particles_simulate14t_particles_DA.152
	.4byte 0x8610060c
	.2byte 0x0402
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.155-..___tag_value__Z18particles_simulate14t_particles_DA.153
	.8byte 0xffc00d1c380e0c10
	.8byte 0xffffffc80d1affff
	.2byte 0x0422
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.156-..___tag_value__Z18particles_simulate14t_particles_DA.155
	.8byte 0xffc00d1c380e0310
	.8byte 0xffffffd00d1affff
	.8byte 0xc00d1c380e0f1022
	.8byte 0xffffb00d1affffff
	.2byte 0x22ff
	.byte 0x04
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.159-..___tag_value__Z18particles_simulate14t_particles_DA.156
	.8byte 0xffc00d1c380e0d10
	.8byte 0xffffffc00d1affff
	.8byte 0xc00d1c380e0e1022
	.8byte 0xffffb80d1affffff
	.2byte 0x22ff
	.byte 0x04
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.184-..___tag_value__Z18particles_simulate14t_particles_DA.159
	.2byte 0x04cf
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.185-..___tag_value__Z18particles_simulate14t_particles_DA.184
	.2byte 0x04ce
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.186-..___tag_value__Z18particles_simulate14t_particles_DA.185
	.2byte 0x04cd
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.187-..___tag_value__Z18particles_simulate14t_particles_DA.186
	.2byte 0x04cc
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.188-..___tag_value__Z18particles_simulate14t_particles_DA.187
	.2byte 0x04c3
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.189-..___tag_value__Z18particles_simulate14t_particles_DA.188
	.4byte 0xc608070c
	.byte 0x04
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.191-..___tag_value__Z18particles_simulate14t_particles_DA.189
	.4byte 0x0410060c
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.193-..___tag_value__Z18particles_simulate14t_particles_DA.191
	.4byte 0x0410070c
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.194-..___tag_value__Z18particles_simulate14t_particles_DA.193
	.4byte 0x8610060c
	.2byte 0x0402
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.196-..___tag_value__Z18particles_simulate14t_particles_DA.194
	.8byte 0xffc00d1c380e0e10
	.8byte 0xffffffb80d1affff
	.2byte 0x0422
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.197-..___tag_value__Z18particles_simulate14t_particles_DA.196
	.8byte 0xffc00d1c380e0310
	.8byte 0xffffffd00d1affff
	.8byte 0xc00d1c380e0d1022
	.8byte 0xffffc00d1affffff
	.8byte 0x0d1c380e0f1022ff
	.8byte 0xffb00d1affffffc0
	.4byte 0x0422ffff
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.200-..___tag_value__Z18particles_simulate14t_particles_DA.197
	.8byte 0xffc00d1c380e0c10
	.8byte 0xffffffc80d1affff
	.2byte 0x0422
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.206-..___tag_value__Z18particles_simulate14t_particles_DA.200
	.2byte 0x04cf
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.207-..___tag_value__Z18particles_simulate14t_particles_DA.206
	.2byte 0x04ce
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.208-..___tag_value__Z18particles_simulate14t_particles_DA.207
	.2byte 0x04cd
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.209-..___tag_value__Z18particles_simulate14t_particles_DA.208
	.2byte 0x04cc
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.210-..___tag_value__Z18particles_simulate14t_particles_DA.209
	.2byte 0x04c3
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.211-..___tag_value__Z18particles_simulate14t_particles_DA.210
	.4byte 0xc608070c
	.byte 0x04
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.213-..___tag_value__Z18particles_simulate14t_particles_DA.211
	.4byte 0x0410060c
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.215-..___tag_value__Z18particles_simulate14t_particles_DA.213
	.4byte 0x0410070c
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.216-..___tag_value__Z18particles_simulate14t_particles_DA.215
	.4byte 0x8610060c
	.2byte 0x0402
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.218-..___tag_value__Z18particles_simulate14t_particles_DA.216
	.8byte 0xffc00d1c380e0c10
	.8byte 0xffffffc80d1affff
	.2byte 0x0422
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.219-..___tag_value__Z18particles_simulate14t_particles_DA.218
	.8byte 0xffc00d1c380e0310
	.8byte 0xffffffd00d1affff
	.2byte 0x0422
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.220-..___tag_value__Z18particles_simulate14t_particles_DA.219
	.8byte 0xffc00d1c380e0d10
	.8byte 0xffffffc00d1affff
	.8byte 0xc00d1c380e0e1022
	.8byte 0xffffb80d1affffff
	.8byte 0x0d1c380e0f1022ff
	.8byte 0xffb00d1affffffc0
	.4byte 0x0422ffff
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.235-..___tag_value__Z18particles_simulate14t_particles_DA.220
	.2byte 0x04cf
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.236-..___tag_value__Z18particles_simulate14t_particles_DA.235
	.2byte 0x04ce
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.237-..___tag_value__Z18particles_simulate14t_particles_DA.236
	.2byte 0x04cd
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.238-..___tag_value__Z18particles_simulate14t_particles_DA.237
	.2byte 0x04cc
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.239-..___tag_value__Z18particles_simulate14t_particles_DA.238
	.2byte 0x04c3
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.240-..___tag_value__Z18particles_simulate14t_particles_DA.239
	.4byte 0xc608070c
	.byte 0x04
	.4byte ..___tag_value__Z18particles_simulate14t_particles_DA.242-..___tag_value__Z18particles_simulate14t_particles_DA.240
	.8byte 0x1c380e031010060c
	.8byte 0xd00d1affffffc00d
	.8byte 0x0c10028622ffffff
	.8byte 0xffffffc00d1c380e
	.8byte 0x1022ffffffc80d1a
	.8byte 0xffffc00d1c380e0d
	.8byte 0x22ffffffc00d1aff
	.8byte 0xffc00d1c380e0e10
	.8byte 0xffffffb80d1affff
	.8byte 0xc00d1c380e0f1022
	.8byte 0xffffb00d1affffff
	.2byte 0x22ff
	.byte 0x00
	.4byte 0x00000144
	.4byte 0x00000464
	.4byte ..___tag_value__Z14particles_init14t_particles_DA.298-.
	.4byte ..___tag_value__Z14particles_init14t_particles_DA.398-..___tag_value__Z14particles_init14t_particles_DA.298
	.byte 0x04
	.4byte _Z14particles_init14t_particles_DA$$LSDA-.
	.byte 0x04
	.4byte ..___tag_value__Z14particles_init14t_particles_DA.300-..___tag_value__Z14particles_init14t_particles_DA.298
	.2byte 0x100e
	.byte 0x04
	.4byte ..___tag_value__Z14particles_init14t_particles_DA.301-..___tag_value__Z14particles_init14t_particles_DA.300
	.4byte 0x8610060c
	.2byte 0x0402
	.4byte ..___tag_value__Z14particles_init14t_particles_DA.303-..___tag_value__Z14particles_init14t_particles_DA.301
	.8byte 0xffc00d1c380e0310
	.8byte 0xffffff300d1affff
	.8byte 0xc00d1c380e0c1022
	.8byte 0xffff280d1affffff
	.8byte 0x0d1c380e0d1022ff
	.8byte 0xff200d1affffffc0
	.8byte 0x1c380e0e1022ffff
	.8byte 0x180d1affffffc00d
	.8byte 0x380e0f1022ffffff
	.8byte 0x0d1affffffc00d1c
	.4byte 0xffffff10
	.2byte 0x0422
	.4byte ..___tag_value__Z14particles_init14t_particles_DA.318-..___tag_value__Z14particles_init14t_particles_DA.303
	.2byte 0x04cf
	.4byte ..___tag_value__Z14particles_init14t_particles_DA.319-..___tag_value__Z14particles_init14t_particles_DA.318
	.2byte 0x04ce
	.4byte ..___tag_value__Z14particles_init14t_particles_DA.320-..___tag_value__Z14particles_init14t_particles_DA.319
	.2byte 0x04cd
	.4byte ..___tag_value__Z14particles_init14t_particles_DA.321-..___tag_value__Z14particles_init14t_particles_DA.320
	.2byte 0x04cc
	.4byte ..___tag_value__Z14particles_init14t_particles_DA.322-..___tag_value__Z14particles_init14t_particles_DA.321
	.2byte 0x04c3
	.4byte ..___tag_value__Z14particles_init14t_particles_DA.323-..___tag_value__Z14particles_init14t_particles_DA.322
	.4byte 0xc608070c
	.byte 0x04
	.4byte ..___tag_value__Z14particles_init14t_particles_DA.325-..___tag_value__Z14particles_init14t_particles_DA.323
	.4byte 0x0410060c
	.4byte ..___tag_value__Z14particles_init14t_particles_DA.327-..___tag_value__Z14particles_init14t_particles_DA.325
	.4byte 0x0410070c
	.4byte ..___tag_value__Z14particles_init14t_particles_DA.328-..___tag_value__Z14particles_init14t_particles_DA.327
	.4byte 0x8610060c
	.2byte 0x0402
	.4byte ..___tag_value__Z14particles_init14t_particles_DA.330-..___tag_value__Z14particles_init14t_particles_DA.328
	.8byte 0xffc00d1c380e0310
	.8byte 0xffffff300d1affff
	.2byte 0x0422
	.4byte ..___tag_value__Z14particles_init14t_particles_DA.332-..___tag_value__Z14particles_init14t_particles_DA.330
	.8byte 0xffc00d1c380e0c10
	.8byte 0xffffff280d1affff
	.8byte 0xc00d1c380e0d1022
	.8byte 0xffff200d1affffff
	.8byte 0x0d1c380e0e1022ff
	.8byte 0xff180d1affffffc0
	.8byte 0x1c380e0f1022ffff
	.8byte 0x100d1affffffc00d
	.4byte 0x22ffffff
	.byte 0x04
	.4byte ..___tag_value__Z14particles_init14t_particles_DA.391-..___tag_value__Z14particles_init14t_particles_DA.332
	.2byte 0x04cf
	.4byte ..___tag_value__Z14particles_init14t_particles_DA.392-..___tag_value__Z14particles_init14t_particles_DA.391
	.2byte 0x04ce
	.4byte ..___tag_value__Z14particles_init14t_particles_DA.393-..___tag_value__Z14particles_init14t_particles_DA.392
	.2byte 0x04cd
	.4byte ..___tag_value__Z14particles_init14t_particles_DA.394-..___tag_value__Z14particles_init14t_particles_DA.393
	.2byte 0x04cc
	.4byte ..___tag_value__Z14particles_init14t_particles_DA.395-..___tag_value__Z14particles_init14t_particles_DA.394
	.2byte 0x04c3
	.4byte ..___tag_value__Z14particles_init14t_particles_DA.396-..___tag_value__Z14particles_init14t_particles_DA.395
	.4byte 0xc608070c
	.byte 0x00
// -- Begin DWARF2 SEGMENT .gnu.linkonce.d.DW.ref.__gxx_personality_v0
	.section .gnu.linkonce.d.DW.ref.__gxx_personality_v0,"a",@progbits
	.weak DW.ref.__gxx_personality_v0
	.align 1
.hidden DW.ref.__gxx_personality_v0
DW.ref.__gxx_personality_v0:
	.8byte __gxx_personality_v0
# End
