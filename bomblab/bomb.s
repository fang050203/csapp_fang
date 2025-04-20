
bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64 
  401004:	48 83 ec 08          	sub    $0x8,%rsp
  401008:	48 8b 05 e9 2f 00 00 	mov    0x2fe9(%rip),%rax        # 403ff8 <__gmon_start__@Base>
  40100f:	48 85 c0             	test   %rax,%rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	call   *%rax
  401016:	48 83 c4 08          	add    $0x8,%rsp
  40101a:	c3                   	ret    

Disassembly of section .plt:

0000000000401020 <.plt>:
  401020:	ff 35 e2 2f 00 00    	push   0x2fe2(%rip)        # 404008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	f2 ff 25 e3 2f 00 00 	bnd jmp *0x2fe3(%rip)        # 404010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102d:	0f 1f 00             	nopl   (%rax)
  401030:	f3 0f 1e fa          	endbr64 
  401034:	68 00 00 00 00       	push   $0x0
  401039:	f2 e9 e1 ff ff ff    	bnd jmp 401020 <_init+0x20>
  40103f:	90                   	nop
  401040:	f3 0f 1e fa          	endbr64 
  401044:	68 01 00 00 00       	push   $0x1
  401049:	f2 e9 d1 ff ff ff    	bnd jmp 401020 <_init+0x20>
  40104f:	90                   	nop
  401050:	f3 0f 1e fa          	endbr64 
  401054:	68 02 00 00 00       	push   $0x2
  401059:	f2 e9 c1 ff ff ff    	bnd jmp 401020 <_init+0x20>
  40105f:	90                   	nop
  401060:	f3 0f 1e fa          	endbr64 
  401064:	68 03 00 00 00       	push   $0x3
  401069:	f2 e9 b1 ff ff ff    	bnd jmp 401020 <_init+0x20>
  40106f:	90                   	nop
  401070:	f3 0f 1e fa          	endbr64 
  401074:	68 04 00 00 00       	push   $0x4
  401079:	f2 e9 a1 ff ff ff    	bnd jmp 401020 <_init+0x20>
  40107f:	90                   	nop
  401080:	f3 0f 1e fa          	endbr64 
  401084:	68 05 00 00 00       	push   $0x5
  401089:	f2 e9 91 ff ff ff    	bnd jmp 401020 <_init+0x20>
  40108f:	90                   	nop
  401090:	f3 0f 1e fa          	endbr64 
  401094:	68 06 00 00 00       	push   $0x6
  401099:	f2 e9 81 ff ff ff    	bnd jmp 401020 <_init+0x20>
  40109f:	90                   	nop
  4010a0:	f3 0f 1e fa          	endbr64 
  4010a4:	68 07 00 00 00       	push   $0x7
  4010a9:	f2 e9 71 ff ff ff    	bnd jmp 401020 <_init+0x20>
  4010af:	90                   	nop
  4010b0:	f3 0f 1e fa          	endbr64 
  4010b4:	68 08 00 00 00       	push   $0x8
  4010b9:	f2 e9 61 ff ff ff    	bnd jmp 401020 <_init+0x20>
  4010bf:	90                   	nop
  4010c0:	f3 0f 1e fa          	endbr64 
  4010c4:	68 09 00 00 00       	push   $0x9
  4010c9:	f2 e9 51 ff ff ff    	bnd jmp 401020 <_init+0x20>
  4010cf:	90                   	nop
  4010d0:	f3 0f 1e fa          	endbr64 
  4010d4:	68 0a 00 00 00       	push   $0xa
  4010d9:	f2 e9 41 ff ff ff    	bnd jmp 401020 <_init+0x20>
  4010df:	90                   	nop
  4010e0:	f3 0f 1e fa          	endbr64 
  4010e4:	68 0b 00 00 00       	push   $0xb
  4010e9:	f2 e9 31 ff ff ff    	bnd jmp 401020 <_init+0x20>
  4010ef:	90                   	nop
  4010f0:	f3 0f 1e fa          	endbr64 
  4010f4:	68 0c 00 00 00       	push   $0xc
  4010f9:	f2 e9 21 ff ff ff    	bnd jmp 401020 <_init+0x20>
  4010ff:	90                   	nop

Disassembly of section .plt.sec:

0000000000401100 <getenv@plt>:
  401100:	f3 0f 1e fa          	endbr64 
  401104:	f2 ff 25 0d 2f 00 00 	bnd jmp *0x2f0d(%rip)        # 404018 <getenv@GLIBC_2.2.5>
  40110b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401110 <strlen@plt>:
  401110:	f3 0f 1e fa          	endbr64 
  401114:	f2 ff 25 05 2f 00 00 	bnd jmp *0x2f05(%rip)        # 404020 <strlen@GLIBC_2.2.5>
  40111b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401120 <signal@plt>:
  401120:	f3 0f 1e fa          	endbr64 
  401124:	f2 ff 25 fd 2e 00 00 	bnd jmp *0x2efd(%rip)        # 404028 <signal@GLIBC_2.2.5>
  40112b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401130 <strtol@plt>:
  401130:	f3 0f 1e fa          	endbr64 
  401134:	f2 ff 25 f5 2e 00 00 	bnd jmp *0x2ef5(%rip)        # 404030 <strtol@GLIBC_2.2.5>
  40113b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401140 <fflush@plt>:
  401140:	f3 0f 1e fa          	endbr64 
  401144:	f2 ff 25 ed 2e 00 00 	bnd jmp *0x2eed(%rip)        # 404038 <fflush@GLIBC_2.2.5>
  40114b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401150 <__isoc99_sscanf@plt>:
  401150:	f3 0f 1e fa          	endbr64 
  401154:	f2 ff 25 e5 2e 00 00 	bnd jmp *0x2ee5(%rip)        # 404040 <__isoc99_sscanf@GLIBC_2.7>
  40115b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401160 <__fgets_chk@plt>:
  401160:	f3 0f 1e fa          	endbr64 
  401164:	f2 ff 25 dd 2e 00 00 	bnd jmp *0x2edd(%rip)        # 404048 <__fgets_chk@GLIBC_2.4>
  40116b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401170 <__printf_chk@plt>:
  401170:	f3 0f 1e fa          	endbr64 
  401174:	f2 ff 25 d5 2e 00 00 	bnd jmp *0x2ed5(%rip)        # 404050 <__printf_chk@GLIBC_2.3.4>
  40117b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401180 <fopen@plt>:
  401180:	f3 0f 1e fa          	endbr64 
  401184:	f2 ff 25 cd 2e 00 00 	bnd jmp *0x2ecd(%rip)        # 404058 <fopen@GLIBC_2.2.5>
  40118b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401190 <strtok@plt>:
  401190:	f3 0f 1e fa          	endbr64 
  401194:	f2 ff 25 c5 2e 00 00 	bnd jmp *0x2ec5(%rip)        # 404060 <strtok@GLIBC_2.2.5>
  40119b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004011a0 <exit@plt>:
  4011a0:	f3 0f 1e fa          	endbr64 
  4011a4:	f2 ff 25 bd 2e 00 00 	bnd jmp *0x2ebd(%rip)        # 404068 <exit@GLIBC_2.2.5>
  4011ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004011b0 <sleep@plt>:
  4011b0:	f3 0f 1e fa          	endbr64 
  4011b4:	f2 ff 25 b5 2e 00 00 	bnd jmp *0x2eb5(%rip)        # 404070 <sleep@GLIBC_2.2.5>
  4011bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004011c0 <__ctype_b_loc@plt>:
  4011c0:	f3 0f 1e fa          	endbr64 
  4011c4:	f2 ff 25 ad 2e 00 00 	bnd jmp *0x2ead(%rip)        # 404078 <__ctype_b_loc@GLIBC_2.3>
  4011cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

00000000004011d0 <_start>:
  4011d0:	f3 0f 1e fa          	endbr64 
  4011d4:	31 ed                	xor    %ebp,%ebp
  4011d6:	49 89 d1             	mov    %rdx,%r9
  4011d9:	5e                   	pop    %rsi
  4011da:	48 89 e2             	mov    %rsp,%rdx
  4011dd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4011e1:	50                   	push   %rax
  4011e2:	54                   	push   %rsp
  4011e3:	45 31 c0             	xor    %r8d,%r8d
  4011e6:	31 c9                	xor    %ecx,%ecx
  4011e8:	48 c7 c7 b6 12 40 00 	mov    $0x4012b6,%rdi
  4011ef:	ff 15 fb 2d 00 00    	call   *0x2dfb(%rip)        # 403ff0 <__libc_start_main@GLIBC_2.34>
  4011f5:	f4                   	hlt    
  4011f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4011fd:	00 00 00 

0000000000401200 <_dl_relocate_static_pie>:
  401200:	f3 0f 1e fa          	endbr64 
  401204:	c3                   	ret    
  401205:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40120c:	00 00 00 
  40120f:	90                   	nop

0000000000401210 <deregister_tm_clones>:
  401210:	b8 c8 43 40 00       	mov    $0x4043c8,%eax
  401215:	48 3d c8 43 40 00    	cmp    $0x4043c8,%rax
  40121b:	74 13                	je     401230 <deregister_tm_clones+0x20>
  40121d:	b8 00 00 00 00       	mov    $0x0,%eax
  401222:	48 85 c0             	test   %rax,%rax
  401225:	74 09                	je     401230 <deregister_tm_clones+0x20>
  401227:	bf c8 43 40 00       	mov    $0x4043c8,%edi
  40122c:	ff e0                	jmp    *%rax
  40122e:	66 90                	xchg   %ax,%ax
  401230:	c3                   	ret    
  401231:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401238:	00 00 00 00 
  40123c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401240 <register_tm_clones>:
  401240:	be c8 43 40 00       	mov    $0x4043c8,%esi
  401245:	48 81 ee c8 43 40 00 	sub    $0x4043c8,%rsi
  40124c:	48 89 f0             	mov    %rsi,%rax
  40124f:	48 c1 ee 3f          	shr    $0x3f,%rsi
  401253:	48 c1 f8 03          	sar    $0x3,%rax
  401257:	48 01 c6             	add    %rax,%rsi
  40125a:	48 d1 fe             	sar    %rsi
  40125d:	74 11                	je     401270 <register_tm_clones+0x30>
  40125f:	b8 00 00 00 00       	mov    $0x0,%eax
  401264:	48 85 c0             	test   %rax,%rax
  401267:	74 07                	je     401270 <register_tm_clones+0x30>
  401269:	bf c8 43 40 00       	mov    $0x4043c8,%edi
  40126e:	ff e0                	jmp    *%rax
  401270:	c3                   	ret    
  401271:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401278:	00 00 00 00 
  40127c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401280 <__do_global_dtors_aux>:
  401280:	f3 0f 1e fa          	endbr64 
  401284:	80 3d 6d 31 00 00 00 	cmpb   $0x0,0x316d(%rip)        # 4043f8 <completed.0>
  40128b:	75 13                	jne    4012a0 <__do_global_dtors_aux+0x20>
  40128d:	55                   	push   %rbp
  40128e:	48 89 e5             	mov    %rsp,%rbp
  401291:	e8 7a ff ff ff       	call   401210 <deregister_tm_clones>
  401296:	c6 05 5b 31 00 00 01 	movb   $0x1,0x315b(%rip)        # 4043f8 <completed.0>
  40129d:	5d                   	pop    %rbp
  40129e:	c3                   	ret    
  40129f:	90                   	nop
  4012a0:	c3                   	ret    
  4012a1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4012a8:	00 00 00 00 
  4012ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004012b0 <frame_dummy>:
  4012b0:	f3 0f 1e fa          	endbr64 
  4012b4:	eb 8a                	jmp    401240 <register_tm_clones>

00000000004012b6 <main>:
  4012b6:	f3 0f 1e fa          	endbr64 
  4012ba:	55                   	push   %rbp
  4012bb:	48 89 e5             	mov    %rsp,%rbp
  4012be:	53                   	push   %rbx
  4012bf:	48 83 ec 08          	sub    $0x8,%rsp
  4012c3:	83 ff 01             	cmp    $0x1,%edi
  4012c6:	0f 84 f6 00 00 00    	je     4013c2 <main+0x10c>
  4012cc:	48 89 f3             	mov    %rsi,%rbx
  4012cf:	83 ff 02             	cmp    $0x2,%edi
  4012d2:	0f 85 1d 01 00 00    	jne    4013f5 <main+0x13f>
  4012d8:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
  4012dc:	be 04 20 40 00       	mov    $0x402004,%esi
  4012e1:	e8 9a fe ff ff       	call   401180 <fopen@plt>
  4012e6:	48 89 05 13 31 00 00 	mov    %rax,0x3113(%rip)        # 404400 <infile>
  4012ed:	48 85 c0             	test   %rax,%rax
  4012f0:	0f 84 df 00 00 00    	je     4013d5 <main+0x11f>
  4012f6:	e8 0d 09 00 00       	call   401c08 <initialize_bomb>
  4012fb:	be 50 20 40 00       	mov    $0x402050,%esi
  401300:	bf 01 00 00 00       	mov    $0x1,%edi
  401305:	b8 00 00 00 00       	mov    $0x0,%eax
  40130a:	e8 61 fe ff ff       	call   401170 <__printf_chk@plt>
  40130f:	be 90 20 40 00       	mov    $0x402090,%esi
  401314:	bf 01 00 00 00       	mov    $0x1,%edi
  401319:	b8 00 00 00 00       	mov    $0x0,%eax
  40131e:	e8 4d fe ff ff       	call   401170 <__printf_chk@plt>
  401323:	e8 9c 0a 00 00       	call   401dc4 <read_line>
  401328:	48 89 c7             	mov    %rax,%rdi
  40132b:	e8 cc 01 00 00       	call   4014fc <phase_0>
  401330:	85 c0                	test   %eax,%eax
  401332:	0f 85 de 00 00 00    	jne    401416 <main+0x160>
  401338:	e8 87 0a 00 00       	call   401dc4 <read_line>
  40133d:	48 89 c7             	mov    %rax,%rdi
  401340:	e8 e0 01 00 00       	call   401525 <phase_1>
  401345:	85 c0                	test   %eax,%eax
  401347:	0f 85 e7 00 00 00    	jne    401434 <main+0x17e>
  40134d:	e8 72 0a 00 00       	call   401dc4 <read_line>
  401352:	48 89 c7             	mov    %rax,%rdi
  401355:	e8 24 02 00 00       	call   40157e <phase_2>
  40135a:	85 c0                	test   %eax,%eax
  40135c:	0f 85 f0 00 00 00    	jne    401452 <main+0x19c>
  401362:	e8 5d 0a 00 00       	call   401dc4 <read_line>
  401367:	48 89 c7             	mov    %rax,%rdi
  40136a:	e8 86 02 00 00       	call   4015f5 <phase_3>
  40136f:	85 c0                	test   %eax,%eax
  401371:	0f 85 f9 00 00 00    	jne    401470 <main+0x1ba>
  401377:	e8 48 0a 00 00       	call   401dc4 <read_line>
  40137c:	48 89 c7             	mov    %rax,%rdi
  40137f:	e8 41 03 00 00       	call   4016c5 <phase_4>
  401384:	85 c0                	test   %eax,%eax
  401386:	0f 85 02 01 00 00    	jne    40148e <main+0x1d8>
  40138c:	e8 33 0a 00 00       	call   401dc4 <read_line>
  401391:	48 89 c7             	mov    %rax,%rdi
  401394:	e8 1d 05 00 00       	call   4018b6 <phase_5>
  401399:	85 c0                	test   %eax,%eax
  40139b:	0f 85 0b 01 00 00    	jne    4014ac <main+0x1f6>
  4013a1:	e8 1e 0a 00 00       	call   401dc4 <read_line>
  4013a6:	48 89 c7             	mov    %rax,%rdi
  4013a9:	e8 87 05 00 00       	call   401935 <phase_6>
  4013ae:	85 c0                	test   %eax,%eax
  4013b0:	0f 85 14 01 00 00    	jne    4014ca <main+0x214>
  4013b6:	b8 00 00 00 00       	mov    $0x0,%eax
  4013bb:	48 83 c4 08          	add    $0x8,%rsp
  4013bf:	5b                   	pop    %rbx
  4013c0:	5d                   	pop    %rbp
  4013c1:	c3                   	ret    
  4013c2:	48 8b 05 27 30 00 00 	mov    0x3027(%rip),%rax        # 4043f0 <stdin@GLIBC_2.2.5>
  4013c9:	48 89 05 30 30 00 00 	mov    %rax,0x3030(%rip)        # 404400 <infile>
  4013d0:	e9 21 ff ff ff       	jmp    4012f6 <main+0x40>
  4013d5:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
  4013d9:	48 8b 13             	mov    (%rbx),%rdx
  4013dc:	be 06 20 40 00       	mov    $0x402006,%esi
  4013e1:	bf 01 00 00 00       	mov    $0x1,%edi
  4013e6:	e8 85 fd ff ff       	call   401170 <__printf_chk@plt>
  4013eb:	bf 08 00 00 00       	mov    $0x8,%edi
  4013f0:	e8 ab fd ff ff       	call   4011a0 <exit@plt>
  4013f5:	48 8b 16             	mov    (%rsi),%rdx
  4013f8:	be 23 20 40 00       	mov    $0x402023,%esi
  4013fd:	bf 01 00 00 00       	mov    $0x1,%edi
  401402:	b8 00 00 00 00       	mov    $0x0,%eax
  401407:	e8 64 fd ff ff       	call   401170 <__printf_chk@plt>
  40140c:	bf 08 00 00 00       	mov    $0x8,%edi
  401411:	e8 8a fd ff ff       	call   4011a0 <exit@plt>
  401416:	e8 05 0b 00 00       	call   401f20 <phase_defused>
  40141b:	be c0 20 40 00       	mov    $0x4020c0,%esi
  401420:	bf 01 00 00 00       	mov    $0x1,%edi
  401425:	b8 00 00 00 00       	mov    $0x0,%eax
  40142a:	e8 41 fd ff ff       	call   401170 <__printf_chk@plt>
  40142f:	e9 04 ff ff ff       	jmp    401338 <main+0x82>
  401434:	e8 e7 0a 00 00       	call   401f20 <phase_defused>
  401439:	be e8 20 40 00       	mov    $0x4020e8,%esi
  40143e:	bf 01 00 00 00       	mov    $0x1,%edi
  401443:	b8 00 00 00 00       	mov    $0x0,%eax
  401448:	e8 23 fd ff ff       	call   401170 <__printf_chk@plt>
  40144d:	e9 fb fe ff ff       	jmp    40134d <main+0x97>
  401452:	e8 c9 0a 00 00       	call   401f20 <phase_defused>
  401457:	be 18 21 40 00       	mov    $0x402118,%esi
  40145c:	bf 01 00 00 00       	mov    $0x1,%edi
  401461:	b8 00 00 00 00       	mov    $0x0,%eax
  401466:	e8 05 fd ff ff       	call   401170 <__printf_chk@plt>
  40146b:	e9 f2 fe ff ff       	jmp    401362 <main+0xac>
  401470:	e8 ab 0a 00 00       	call   401f20 <phase_defused>
  401475:	be 3d 20 40 00       	mov    $0x40203d,%esi
  40147a:	bf 01 00 00 00       	mov    $0x1,%edi
  40147f:	b8 00 00 00 00       	mov    $0x0,%eax
  401484:	e8 e7 fc ff ff       	call   401170 <__printf_chk@plt>
  401489:	e9 e9 fe ff ff       	jmp    401377 <main+0xc1>
  40148e:	e8 8d 0a 00 00       	call   401f20 <phase_defused>
  401493:	be 38 21 40 00       	mov    $0x402138,%esi
  401498:	bf 01 00 00 00       	mov    $0x1,%edi
  40149d:	b8 00 00 00 00       	mov    $0x0,%eax
  4014a2:	e8 c9 fc ff ff       	call   401170 <__printf_chk@plt>
  4014a7:	e9 e0 fe ff ff       	jmp    40138c <main+0xd6>
  4014ac:	e8 6f 0a 00 00       	call   401f20 <phase_defused>
  4014b1:	be 60 21 40 00       	mov    $0x402160,%esi
  4014b6:	bf 01 00 00 00       	mov    $0x1,%edi
  4014bb:	b8 00 00 00 00       	mov    $0x0,%eax
  4014c0:	e8 ab fc ff ff       	call   401170 <__printf_chk@plt>
  4014c5:	e9 d7 fe ff ff       	jmp    4013a1 <main+0xeb>
  4014ca:	e8 51 0a 00 00       	call   401f20 <phase_defused>
  4014cf:	e9 e2 fe ff ff       	jmp    4013b6 <main+0x100>

00000000004014d4 <tjCcvCpM>:
  4014d4:	f3 0f 1e fa          	endbr64 
  4014d8:	0f af f7             	imul   %edi,%esi
  4014db:	66 0f ef c9          	pxor   %xmm1,%xmm1
  4014df:	f2 0f 2a ce          	cvtsi2sd %esi,%xmm1
  4014e3:	f2 0f 59 0d ad 0d 00 	mulsd  0xdad(%rip),%xmm1        # 402298 <secret_passward+0x18>
  4014ea:	00 
  4014eb:	66 0f ef c0          	pxor   %xmm0,%xmm0
  4014ef:	f2 0f 2a c7          	cvtsi2sd %edi,%xmm0
  4014f3:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  4014f7:	f2 0f 5a c0          	cvtsd2ss %xmm0,%xmm0
  4014fb:	c3                   	ret    

00000000004014fc <phase_0>:
  4014fc:	f3 0f 1e fa          	endbr64 
  401500:	55                   	push   %rbp
  401501:	48 89 e5             	mov    %rsp,%rbp
  401504:	be 80 21 40 00       	mov    $0x402180,%esi   #将要比较的字符串传入第二参数
  401509:	e8 9b 06 00 00       	call   401ba9 <strings_not_equal>    #调用比较函数
  40150e:	85 c0                	test   %eax,%eax
  401510:	75 07                	jne    401519 <phase_0+0x1d>
  401512:	b8 01 00 00 00       	mov    $0x1,%eax   #返回1表示检验通过
  401517:	5d                   	pop    %rbp
  401518:	c3                   	ret    
  401519:	e8 9f 07 00 00       	call   401cbd <explode_bomb>    #炸弹爆炸
  40151e:	b8 00 00 00 00       	mov    $0x0,%eax    #检验失败
  401523:	eb f2                	jmp    401517 <phase_0+0x1b>    #返回

0000000000401525 <phase_1>:
  401525:	f3 0f 1e fa          	endbr64 
  401529:	55                   	push   %rbp
  40152a:	48 89 e5             	mov    %rsp,%rbp
  40152d:	48 83 ec 10          	sub    $0x10,%rsp
  401531:	48 8d 4d f8          	lea    -0x8(%rbp),%rcx   #读入第一个参数的地址
  401535:	48 8d 55 fc          	lea    -0x4(%rbp),%rdx    #读入第二个参数的地址
  401539:	be db 23 40 00       	mov    $0x4023db,%esi      #看是否输入了两个数字
  40153e:	b8 00 00 00 00       	mov    $0x0,%eax     
  401543:	e8 08 fc ff ff       	call   401150 <__isoc99_sscanf@plt>
  401548:	83 f8 02             	cmp    $0x2,%eax      #比较，输入错误则引爆炸弹
  40154b:	75 1e                	jne    40156b <phase_1+0x46>
  40154d:	81 7d fc 00 00 00 23 	cmpl   $0x23000000,-0x4(%rbp)      #比较是否相等
  401554:	75 09                	jne    40155f <phase_1+0x3a>   #不相等则跳转到爆炸
  401556:	81 7d f8 8c 45 c9 41 	cmpl   $0x41c9458c,-0x8(%rbp)   #比较是否相等
  40155d:	74 18                	je     401577 <phase_1+0x52>
  40155f:	e8 59 07 00 00       	call   401cbd <explode_bomb>
  401564:	b8 00 00 00 00       	mov    $0x0,%eax   #检测正确则离开
  401569:	c9                   	leave  
  40156a:	c3                   	ret    
  40156b:	e8 4d 07 00 00       	call   401cbd <explode_bomb>
  401570:	b8 00 00 00 00       	mov    $0x0,%eax
  401575:	eb f2                	jmp    401569 <phase_1+0x44>
  401577:	b8 01 00 00 00       	mov    $0x1,%eax
  40157c:	eb eb                	jmp    401569 <phase_1+0x44>

000000000040157e <phase_2>:
  40157e:	f3 0f 1e fa          	endbr64 
  401582:	55                   	push   %rbp
  401583:	48 89 e5             	mov    %rsp,%rbp
  401586:	48 83 ec 20          	sub    $0x20,%rsp
  40158a:	ba 08 00 00 00       	mov    $0x8,%edx    #要读入8个数字
  40158f:	48 8d 75 e0          	lea    -0x20(%rbp),%rsi     #传递数组首地址
  401593:	e8 a3 07 00 00       	call   401d3b <read_n_numbers>
  401598:	85 c0                	test   %eax,%eax     #查看是否正确输入
  40159a:	74 16                	je     4015b2 <phase_2+0x34>
  40159c:	83 7d e0 0a          	cmpl   $0xa,-0x20(%rbp)       #数组第一个元素要为10
  4015a0:	75 06                	jne    4015a8 <phase_2+0x2a>
  4015a2:	83 7d e4 14          	cmpl   $0x14,-0x1c(%rbp)    #数组第二个元素要为20
  4015a6:	74 18                	je     4015c0 <phase_2+0x42>
  4015a8:	e8 10 07 00 00       	call   401cbd <explode_bomb>
  4015ad:	b8 00 00 00 00       	mov    $0x0,%eax
  4015b2:	c9                   	leave  
  4015b3:	c3                   	ret    
  4015b4:	e8 04 07 00 00       	call   401cbd <explode_bomb>
  4015b9:	b8 00 00 00 00       	mov    $0x0,%eax
  4015be:	eb f2                	jmp    4015b2 <phase_2+0x34>
  4015c0:	b8 02 00 00 00       	mov    $0x2,%eax             #循环变量i
  4015c5:	83 f8 07             	cmp    $0x7,%eax    #当i小于等于7，则继续执行下面的代码
  4015c8:	7f 24                	jg     4015ee <phase_2+0x70>
  4015ca:	48 63 c8             	movslq %eax,%rcx
  4015cd:	8d 50 fe             	lea    -0x2(%rax),%edx    #将i-2，作为数组索引元素
  4015d0:	48 63 d2             	movslq %edx,%rdx
  4015d3:	8b 54 95 e0          	mov    -0x20(%rbp,%rdx,4),%edx     #查找A[i-2]
  4015d7:	d1 fa                	sar    %edx                       #A[i-2]除以2
  4015d9:	8d 70 ff             	lea    -0x1(%rax),%esi    #将i-1作为数组索引
  4015dc:	48 63 f6             	movslq %esi,%rsi
  4015df:	03 54 b5 e0          	add    -0x20(%rbp,%rsi,4),%edx    #A[i-2]+A[i-1]
  4015e3:	39 54 8d e0          	cmp    %edx,-0x20(%rbp,%rcx,4)     #与A[i]比较，不相等则爆炸
  4015e7:	75 cb                	jne    4015b4 <phase_2+0x36>
  4015e9:	83 c0 01             	add    $0x1,%eax   #若成功，i+1，继续循环
  4015ec:	eb d7                	jmp    4015c5 <phase_2+0x47>
  4015ee:	b8 01 00 00 00       	mov    $0x1,%eax
  4015f3:	eb bd                	jmp    4015b2 <phase_2+0x34>

00000000004015f5 <phase_3>:
  4015f5:	f3 0f 1e fa          	endbr64 
  4015f9:	55                   	push   %rbp
  4015fa:	48 89 e5             	mov    %rsp,%rbp
  4015fd:	48 83 ec 10          	sub    $0x10,%rsp
  401601:	48 8d 4d f8          	lea    -0x8(%rbp),%rcx    #代码逻辑同前，处理输入
  401605:	48 8d 55 fc          	lea    -0x4(%rbp),%rdx
  401609:	be db 23 40 00       	mov    $0x4023db,%esi    #需要查看这个输入
  40160e:	b8 00 00 00 00       	mov    $0x0,%eax
  401613:	e8 38 fb ff ff       	call   401150 <__isoc99_sscanf@plt>
  401618:	83 f8 01             	cmp    $0x1,%eax
  40161b:	7e 15                	jle    401632 <phase_3+0x3d>
  40161d:	8b 45 fc             	mov    -0x4(%rbp),%eax    #获取传入的第一个参数
  401620:	83 e8 30             	sub    $0x30,%eax    #减去48
  401623:	83 f8 09             	cmp    $0x9,%eax   #与9比较
  401626:	77 16                	ja     40163e <phase_3+0x49>   #若大于9则炸弹爆炸
  401628:	89 c0                	mov    %eax,%eax
  40162a:	3e ff 24 c5 e0 21 40 	notrack jmp *0x4021e0(,%rax,8)
  401631:	00 
  401632:	e8 86 06 00 00       	call   401cbd <explode_bomb>
  401637:	b8 00 00 00 00       	mov    $0x0,%eax
  40163c:	eb 22                	jmp    401660 <phase_3+0x6b>
  40163e:	e8 7a 06 00 00       	call   401cbd <explode_bomb>
  401643:	b8 00 00 00 00       	mov    $0x0,%eax
  401648:	eb 16                	jmp    401660 <phase_3+0x6b>
  40164a:	b8 c6 02 00 00       	mov    $0x2c6,%eax     #十进制为710
  40164f:	eb 05                	jmp    401656 <phase_3+0x61>
  401651:	b8 8b 01 00 00       	mov    $0x18b,%eax
  401656:	39 45 f8             	cmp    %eax,-0x8(%rbp)    #比较第二个参数是否为710
  401659:	75 07                	jne    401662 <phase_3+0x6d>       #不相等则炸弹爆炸
  40165b:	b8 01 00 00 00       	mov    $0x1,%eax
  401660:	c9                   	leave  
  401661:	c3                   	ret    
  401662:	e8 56 06 00 00       	call   401cbd <explode_bomb>
  401667:	b8 00 00 00 00       	mov    $0x0,%eax
  40166c:	eb f2                	jmp    401660 <phase_3+0x6b>

000000000040166e <func4>:
  40166e:	f3 0f 1e fa          	endbr64 
  401672:	55                   	push   %rbp
  401673:	48 89 e5             	mov    %rsp,%rbp
  401676:	41 56                	push   %r14
  401678:	41 55                	push   %r13
  40167a:	41 54                	push   %r12
  40167c:	53                   	push   %rbx
  40167d:	49 89 fc             	mov    %rdi,%r12
  401680:	89 d3                	mov    %edx,%ebx
  401682:	8d 14 16             	lea    (%rsi,%rdx,1),%edx
  401685:	89 d0                	mov    %edx,%eax
  401687:	c1 e8 1f             	shr    $0x1f,%eax
  40168a:	01 d0                	add    %edx,%eax
  40168c:	d1 f8                	sar    %eax
  40168e:	39 de                	cmp    %ebx,%esi
  401690:	7c 0f                	jl     4016a1 <func4+0x33>
  401692:	48 63 db             	movslq %ebx,%rbx
  401695:	8b 04 9f             	mov    (%rdi,%rbx,4),%eax
  401698:	5b                   	pop    %rbx
  401699:	41 5c                	pop    %r12
  40169b:	41 5d                	pop    %r13
  40169d:	41 5e                	pop    %r14
  40169f:	5d                   	pop    %rbp
  4016a0:	c3                   	ret    
  4016a1:	41 89 c5             	mov    %eax,%r13d
  4016a4:	89 c2                	mov    %eax,%edx
  4016a6:	e8 c3 ff ff ff       	call   40166e <func4>
  4016ab:	41 89 c6             	mov    %eax,%r14d
  4016ae:	41 8d 75 01          	lea    0x1(%r13),%esi
  4016b2:	89 da                	mov    %ebx,%edx
  4016b4:	4c 89 e7             	mov    %r12,%rdi
  4016b7:	e8 b2 ff ff ff       	call   40166e <func4>
  4016bc:	41 39 c6             	cmp    %eax,%r14d
  4016bf:	41 0f 4d c6          	cmovge %r14d,%eax
  4016c3:	eb d3                	jmp    401698 <func4+0x2a>

00000000004016c5 <phase_4>:
  4016c5:	f3 0f 1e fa          	endbr64 
  4016c9:	55                   	push   %rbp
  4016ca:	48 89 e5             	mov    %rsp,%rbp
  4016cd:	41 54                	push   %r12
  4016cf:	53                   	push   %rbx
  4016d0:	48 81 ec a0 00 00 00 	sub    $0xa0,%rsp
  4016d7:	c7 85 60 ff ff ff 9e 	movl   $0x9e,-0xa0(%rbp)
  4016de:	00 00 00 
  4016e1:	c7 85 64 ff ff ff ec 	movl   $0x1ec,-0x9c(%rbp)
  4016e8:	01 00 00 
  4016eb:	c7 85 68 ff ff ff 89 	movl   $0x189,-0x98(%rbp)
  4016f2:	01 00 00 
  4016f5:	c7 85 6c ff ff ff 50 	movl   $0x50,-0x94(%rbp)
  4016fc:	00 00 00 
  4016ff:	c7 85 70 ff ff ff 8b 	movl   $0x18b,-0x90(%rbp)
  401706:	01 00 00 
  401709:	c7 85 74 ff ff ff 57 	movl   $0x57,-0x8c(%rbp)
  401710:	00 00 00 
  401713:	c7 85 78 ff ff ff 7e 	movl   $0x17e,-0x88(%rbp)
  40171a:	01 00 00 
  40171d:	c7 85 7c ff ff ff 97 	movl   $0x197,-0x84(%rbp)
  401724:	01 00 00 
  401727:	c7 45 80 b8 01 00 00 	movl   $0x1b8,-0x80(%rbp)
  40172e:	c7 45 84 2a 00 00 00 	movl   $0x2a,-0x7c(%rbp)
  401735:	c7 45 88 e1 01 00 00 	movl   $0x1e1,-0x78(%rbp)
  40173c:	c7 45 8c 96 00 00 00 	movl   $0x96,-0x74(%rbp)
  401743:	c7 45 90 f8 01 00 00 	movl   $0x1f8,-0x70(%rbp)
  40174a:	c7 45 94 71 00 00 00 	movl   $0x71,-0x6c(%rbp)
  401751:	c7 45 98 d9 00 00 00 	movl   $0xd9,-0x68(%rbp)
  401758:	c7 45 9c 8c 01 00 00 	movl   $0x18c,-0x64(%rbp)
  40175f:	c7 45 a0 94 00 00 00 	movl   $0x94,-0x60(%rbp)
  401766:	c7 45 a4 0a 01 00 00 	movl   $0x10a,-0x5c(%rbp)
  40176d:	c7 45 a8 4f 00 00 00 	movl   $0x4f,-0x58(%rbp)
  401774:	c7 45 ac bf 01 00 00 	movl   $0x1bf,-0x54(%rbp)
  40177b:	c7 45 b0 bc 00 00 00 	movl   $0xbc,-0x50(%rbp)
  401782:	c7 45 b4 35 01 00 00 	movl   $0x135,-0x4c(%rbp)
  401789:	c7 45 b8 8f 00 00 00 	movl   $0x8f,-0x48(%rbp)
  401790:	c7 45 bc 9a 01 00 00 	movl   $0x19a,-0x44(%rbp)
  401797:	c7 45 c0 3c 01 00 00 	movl   $0x13c,-0x40(%rbp)
  40179e:	c7 45 c4 31 00 00 00 	movl   $0x31,-0x3c(%rbp)
  4017a5:	c7 45 c8 d0 01 00 00 	movl   $0x1d0,-0x38(%rbp)
  4017ac:	c7 45 cc 8a 01 00 00 	movl   $0x18a,-0x34(%rbp)
  4017b3:	c7 45 d0 e5 00 00 00 	movl   $0xe5,-0x30(%rbp)
  4017ba:	c7 45 d4 6a 00 00 00 	movl   $0x6a,-0x2c(%rbp)
  4017c1:	c7 45 d8 cb 00 00 00 	movl   $0xcb,-0x28(%rbp)
  4017c8:	c7 45 dc 0e 01 00 00 	movl   $0x10e,-0x24(%rbp)
  4017cf:	c7 45 e0 49 00 00 00 	movl   $0x49,-0x20(%rbp)
  4017d6:	c7 45 e4 a4 01 00 00 	movl   $0x1a4,-0x1c(%rbp)
  4017dd:	c7 45 e8 6c 00 00 00 	movl   $0x6c,-0x18(%rbp)
  4017e4:	48 8d 8d 58 ff ff ff 	lea    -0xa8(%rbp),%rcx
  4017eb:	48 8d 95 5c ff ff ff 	lea    -0xa4(%rbp),%rdx
  4017f2:	be db 23 40 00       	mov    $0x4023db,%esi
  4017f7:	b8 00 00 00 00       	mov    $0x0,%eax
  4017fc:	e8 4f f9 ff ff       	call   401150 <__isoc99_sscanf@plt>
  401801:	83 f8 02             	cmp    $0x2,%eax
  401804:	74 16                	je     40181c <phase_4+0x157>
  401806:	e8 b2 04 00 00       	call   401cbd <explode_bomb>
  40180b:	b8 00 00 00 00       	mov    $0x0,%eax
  401810:	48 81 c4 a0 00 00 00 	add    $0xa0,%rsp
  401817:	5b                   	pop    %rbx
  401818:	41 5c                	pop    %r12
  40181a:	5d                   	pop    %rbp
  40181b:	c3                   	ret    
  40181c:	8b 9d 58 ff ff ff    	mov    -0xa8(%rbp),%ebx    #传入用户输入的第二个参数到%rbx
  401822:	44 8b a5 5c ff ff ff 	mov    -0xa4(%rbp),%r12d    #传入用户输入的第一个参数到%r12d
  401829:	89 da                	mov    %ebx,%edx    #传入第3参数
  40182b:	44 89 e6             	mov    %r12d,%esi  #传入第2参数
  40182e:	48 8d bd 60 ff ff ff 	lea    -0xa0(%rbp),%rdi    #传入的是前面一堆push操作的首地址，应该是数组的首地址
  401835:	e8 34 fe ff ff       	call   40166e <func4>     #调用func4
  40183a:	3d a4 01 00 00       	cmp    $0x1a4,%eax       #比较返回值是否等于十进制420
  40183f:	75 11                	jne    401852 <phase_4+0x18d>    #不相等则炸弹爆炸
  401841:	45 85 e4             	test   %r12d,%r12d
  401844:	7f 18                	jg     40185e <phase_4+0x199>     #检查如果大于0则跳转
  401846:	83 fb 21             	cmp    $0x21,%ebx            #上面比较成功后跳转到这里，继续比较第二个参数
  401849:	7e 39                	jle    401884 <phase_4+0x1bf>     #如果比33小，跳转
  40184b:	b8 01 00 00 00       	mov    $0x1,%eax
  401850:	eb be                	jmp    401810 <phase_4+0x14b>
  401852:	e8 66 04 00 00       	call   401cbd <explode_bomb>
  401857:	b8 00 00 00 00       	mov    $0x0,%eax
  40185c:	eb b2                	jmp    401810 <phase_4+0x14b>
  40185e:	41 8d 74 24 ff       	lea    -0x1(%r12),%esi     #用户输入第一个参数的值减1
  401863:	89 da                	mov    %ebx,%edx
  401865:	48 8d bd 60 ff ff ff 	lea    -0xa0(%rbp),%rdi   #仍然传入数组首地址
  40186c:	e8 fd fd ff ff       	call   40166e <func4>   #调用func4
  401871:	3d a4 01 00 00       	cmp    $0x1a4,%eax      #比较返回值是否等于410，若还相等则爆炸
  401876:	75 ce                	jne    401846 <phase_4+0x181>
  401878:	e8 40 04 00 00       	call   401cbd <explode_bomb>
  40187d:	b8 00 00 00 00       	mov    $0x0,%eax
  401882:	eb 8c                	jmp    401810 <phase_4+0x14b>
  401884:	8d 53 01             	lea    0x1(%rbx),%edx   #给edx加1
  401887:	44 89 e6             	mov    %r12d,%esi     #以下是继续调用func4
  40188a:	48 8d bd 60 ff ff ff 	lea    -0xa0(%rbp),%rdi
  401891:	e8 d8 fd ff ff       	call   40166e <func4>
  401896:	3d a4 01 00 00       	cmp    $0x1a4,%eax      #检查返回值是否为410，相等则爆炸
  40189b:	74 0a                	je     4018a7 <phase_4+0x1e2>
  40189d:	b8 01 00 00 00       	mov    $0x1,%eax
  4018a2:	e9 69 ff ff ff       	jmp    401810 <phase_4+0x14b>   #成功则返回
  4018a7:	e8 11 04 00 00       	call   401cbd <explode_bomb>
  4018ac:	b8 00 00 00 00       	mov    $0x0,%eax
  4018b1:	e9 5a ff ff ff       	jmp    401810 <phase_4+0x14b>

00000000004018b6 <phase_5>:
  4018b6:	f3 0f 1e fa          	endbr64 
  4018ba:	55                   	push   %rbp
  4018bb:	48 89 e5             	mov    %rsp,%rbp
  4018be:	48 83 ec 10          	sub    $0x10,%rsp
  4018c2:	48 8d 4d f8          	lea    -0x8(%rbp),%rcx
  4018c6:	48 8d 55 fc          	lea    -0x4(%rbp),%rdx
  4018ca:	be db 23 40 00       	mov    $0x4023db,%esi
  4018cf:	b8 00 00 00 00       	mov    $0x0,%eax
  4018d4:	e8 77 f8 ff ff       	call   401150 <__isoc99_sscanf@plt>
  4018d9:	83 f8 01             	cmp    $0x1,%eax
  4018dc:	7e 15                	jle    4018f3 <phase_5+0x3d>
  4018de:	8b 45 fc             	mov    -0x4(%rbp),%eax    #获得第一个参数
  4018e1:	83 e0 0f             	and    $0xf,%eax        #取低四位
  4018e4:	89 45 fc             	mov    %eax,-0x4(%rbp)    #重新加载到原位置
  4018e7:	b9 00 00 00 00       	mov    $0x0,%ecx       #记录总和值sum的临时变量
  4018ec:	ba 00 00 00 00       	mov    $0x0,%edx      #记录查找次数的临时变量
  4018f1:	eb 1d                	jmp    401910 <phase_5+0x5a>   #跳转到函数主体
  4018f3:	e8 c5 03 00 00       	call   401cbd <explode_bomb>
  4018f8:	b8 00 00 00 00       	mov    $0x0,%eax          #循环变量i初值为0
  4018fd:	eb 2d                	jmp    40192c <phase_5+0x76>
  4018ff:	83 c2 01             	add    $0x1,%edx
  401902:	48 98                	cltq   
  401904:	8b 04 85 40 22 40 00 	mov    0x402240(,%rax,4),%eax   #加载某个数组的A[i]
  40190b:	89 45 fc             	mov    %eax,-0x4(%rbp)       #传给第一参数
  40190e:	01 c1                	add    %eax,%ecx            #sum+=A[i]
  401910:	8b 45 fc             	mov    -0x4(%rbp),%eax     #作为接下来的循环变量
  401913:	83 f8 0f             	cmp    $0xf,%eax       #检查值是否等于15
  401916:	75 e7                	jne    4018ff <phase_5+0x49>
  401918:	83 fa 09             	cmp    $0x9,%edx    #检查是否循环了9次，否则继续循环
  40191b:	75 05                	jne    401922 <phase_5+0x6c>
  40191d:	39 4d f8             	cmp    %ecx,-0x8(%rbp)       #检查是否等于用户输入的参数2
  401920:	74 0c                	je     40192e <phase_5+0x78>   #不相等则爆炸
  401922:	e8 96 03 00 00       	call   401cbd <explode_bomb>
  401927:	b8 00 00 00 00       	mov    $0x0,%eax
  40192c:	c9                   	leave  
  40192d:	c3                   	ret    
  40192e:	b8 01 00 00 00       	mov    $0x1,%eax
  401933:	eb f7                	jmp    40192c <phase_5+0x76>

0000000000401935 <phase_6>:
  401935:	f3 0f 1e fa          	endbr64 
  401939:	55                   	push   %rbp
  40193a:	48 89 e5             	mov    %rsp,%rbp
  40193d:	48 83 ec 60          	sub    $0x60,%rsp   #分配空间
  401941:	ba 08 00 00 00       	mov    $0x8,%edx    #要输入8个整数
  401946:	48 8d 75 e0          	lea    -0x20(%rbp),%rsi   #传入要输入的数组首地址
  40194a:	e8 ec 03 00 00       	call   401d3b <read_n_numbers>   #调用读入数字函数
  40194f:	85 c0                	test   %eax,%eax
  401951:	74 47                	je     40199a <phase_6+0x65>   #若未读入规定数目的数字，则跳转到炸弹爆炸
  401953:	be 00 00 00 00       	mov    $0x0,%esi  #循环变量i
  401958:	83 fe 07             	cmp    $0x7,%esi    #当i<=7，一直循环
  40195b:	7f 3f                	jg     40199c <phase_6+0x67>
  40195d:	48 63 c6             	movslq %esi,%rax   #将临时变量传递给%rax
  401960:	8b 4c 85 e0          	mov    -0x20(%rbp,%rax,4),%ecx   #根据索引查找数组元素A[i]
  401964:	8d 41 ff             	lea    -0x1(%rcx),%eax      #A[i-1]
  401967:	83 f8 07             	cmp    $0x7,%eax   #比较A[i]-1是否大于7
  40196a:	77 18                	ja     401984 <phase_6+0x4f>   #若大于则跳转到爆炸
  40196c:	83 c6 01             	add    $0x1,%esi   #i++
  40196f:	89 f0                	mov    %esi,%eax    #j=i,作为内层循环变量
  401971:	83 f8 07             	cmp    $0x7,%eax    #检查是否大于7
  401974:	7f e2                	jg     401958 <phase_6+0x23>   #内层循环结束返回
  401976:	48 63 d0             	movslq %eax,%rdx        #传递给临时变量
  401979:	3b 4c 95 e0          	cmp    -0x20(%rbp,%rdx,4),%ecx    #比较是否不同
  40197d:	74 11                	je     401990 <phase_6+0x5b>   #若相同则爆炸
  40197f:	83 c0 01             	add    $0x1,%eax   #j++
  401982:	eb ed                	jmp    401971 <phase_6+0x3c>   #继续内层循环
  401984:	e8 34 03 00 00       	call   401cbd <explode_bomb>
  401989:	b8 00 00 00 00       	mov    $0x0,%eax
  40198e:	eb 0a                	jmp    40199a <phase_6+0x65>
  401990:	e8 28 03 00 00       	call   401cbd <explode_bomb>
  401995:	b8 00 00 00 00       	mov    $0x0,%eax
  40199a:	c9                   	leave  
  40199b:	c3                   	ret    
  40199c:	b8 00 00 00 00       	mov    $0x0,%eax     #外层循环索引i
  4019a1:	eb 13                	jmp    4019b6 <phase_6+0x81>   
  4019a3:	48 63 c8             	movslq %eax,%rcx     #%rcx=%eax
  4019a6:	ba 09 00 00 00       	mov    $0x9,%edx    #%rdx赋值为9
  4019ab:	2b 54 8d e0          	sub    -0x20(%rbp,%rcx,4),%edx  #9-减去A[i]
  4019af:	89 54 8d e0          	mov    %edx,-0x20(%rbp,%rcx,4)   #重新赋值为q-A[i]    
  4019b3:	83 c0 01             	add    $0x1,%eax    #i++
  4019b6:	83 f8 07             	cmp    $0x7,%eax      #与7进行比较，小于等于7则继续循环
  4019b9:	7e e8                	jle    4019a3 <phase_6+0x6e>
  4019bb:	be 00 00 00 00       	mov    $0x0,%esi     #循环变量j
  4019c0:	eb 18                	jmp    4019da <phase_6+0xa5>   #跳转到比较
  4019c2:	48 8b 52 08          	mov    0x8(%rdx),%rdx
  4019c6:	83 c0 01             	add    $0x1,%eax     #计数器++
  4019c9:	48 63 ce             	movslq %esi,%rcx              #存储循环变量
  4019cc:	39 44 8d e0          	cmp    %eax,-0x20(%rbp,%rcx,4)     #比较A[j]与%rax的值
  4019d0:	7f f0                	jg     4019c2 <phase_6+0x8d>   #如果大于则指针++
  4019d2:	48 89 54 cd a0       	mov    %rdx,-0x60(%rbp,%rcx,8)
  4019d7:	83 c6 01             	add    $0x1,%esi
  4019da:	83 fe 07             	cmp    $0x7,%esi     #比较是否小于等于7，否则循环结束
  4019dd:	7f 0c                	jg     4019eb <phase_6+0xb6>
  4019df:	b8 01 00 00 00       	mov    $0x1,%eax
  4019e4:	ba 80 42 40 00       	mov    $0x404280,%edx    #传入链表首地址
  4019e9:	eb de                	jmp    4019c9 <phase_6+0x94>
  4019eb:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx    
  4019ef:	48 89 d6             	mov    %rdx,%rsi       
  4019f2:	b8 01 00 00 00       	mov    $0x1,%eax     
  4019f7:	eb 12                	jmp    401a0b <phase_6+0xd6>
  4019f9:	48 63 c8             	movslq %eax,%rcx
  4019fc:	48 8b 4c cd a0       	mov    -0x60(%rbp,%rcx,8),%rcx   #取下一个节点
  401a01:	48 89 4e 08          	mov    %rcx,0x8(%rsi)   #rsi->next=rcx
  401a05:	83 c0 01             	add    $0x1,%eax     #计数器++
  401a08:	48 89 ce             	mov    %rcx,%rsi     #移动到下一个节点
  401a0b:	83 f8 07             	cmp    $0x7,%eax    #比较是否全部处理完
  401a0e:	7e e9                	jle    4019f9 <phase_6+0xc4>   #继续循环
  401a10:	48 c7 46 08 00 00 00 	movq   $0x0,0x8(%rsi)     #设置尾节点为null
  401a17:	00 
  401a18:	b8 00 00 00 00       	mov    $0x0,%eax        #循环计数器
  401a1d:	eb 03                	jmp    401a22 <phase_6+0xed>  
  401a1f:	83 c0 01             	add    $0x1,%eax    
  401a22:	83 f8 06             	cmp    $0x6,%eax    #比较是否小于等于6
  401a25:	7f 19                	jg     401a40 <phase_6+0x10b>  #完成则跳转离开
  401a27:	8b 0a                	mov    (%rdx),%ecx    #ecx=rdx->value
  401a29:	48 8b 52 08          	mov    0x8(%rdx),%rdx  #rdx=rdx->next
  401a2d:	3b 0a                	cmp    (%rdx),%ecx   #比较当前节点与下一个节点值
  401a2f:	7d ee                	jge    401a1f <phase_6+0xea>    #若小于则爆炸
  401a31:	e8 87 02 00 00       	call   401cbd <explode_bomb>
  401a36:	b8 00 00 00 00       	mov    $0x0,%eax
  401a3b:	e9 5a ff ff ff       	jmp    40199a <phase_6+0x65>
  401a40:	b8 01 00 00 00       	mov    $0x1,%eax
  401a45:	e9 50 ff ff ff       	jmp    40199a <phase_6+0x65>

0000000000401a4a <fun7>:
  401a4a:	f3 0f 1e fa          	endbr64 
  401a4e:	48 85 ff             	test   %rdi,%rdi    #检查输入指针是否为NULL
  401a51:	74 2f                	je     401a82 <fun7+0x38>    #若未则跳转到末尾并返回
  401a53:	55                   	push   %rbp
  401a54:	48 89 e5             	mov    %rsp,%rbp
  401a57:	8b 07                	mov    (%rdi),%eax        #获取二叉树头结点的值
  401a59:	39 f0                	cmp    %esi,%eax     #比较用户传入的数值与之是否相等
  401a5b:	7f 09                	jg     401a66 <fun7+0x1c>    #若大于跳转
  401a5d:	75 14                	jne    401a73 <fun7+0x29>     #不相等则跳转，也就是小于
  401a5f:	b8 00 00 00 00       	mov    $0x0,%eax     #正好相等返回0
  401a64:	5d                   	pop    %rbp
  401a65:	c3                   	ret    
  401a66:	48 8b 7f 08          	mov    0x8(%rdi),%rdi      #左子树根节点地址
  401a6a:	e8 db ff ff ff       	call   401a4a <fun7>     #调用函数
  401a6f:	01 c0                	add    %eax,%eax       返回2*ret
  401a71:	eb f1                	jmp    401a64 <fun7+0x1a>
  401a73:	48 8b 7f 10          	mov    0x10(%rdi),%rdi    #右子树根节点地址
  401a77:	e8 ce ff ff ff       	call   401a4a <fun7>     #调用fun7
  401a7c:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax    #获取2*ret+1
  401a80:	eb e2                	jmp    401a64 <fun7+0x1a>
  401a82:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401a87:	c3                   	ret    

0000000000401a88 <secret_phase>:
  401a88:	f3 0f 1e fa          	endbr64 
  401a8c:	55                   	push   %rbp
  401a8d:	48 89 e5             	mov    %rsp,%rbp
  401a90:	e8 2f 03 00 00       	call   401dc4 <read_line>  #调用读入函数
  401a95:	48 89 c7             	mov    %rax,%rdi        
  401a98:	ba 0a 00 00 00       	mov    $0xa,%edx
  401a9d:	be 00 00 00 00       	mov    $0x0,%esi
  401aa2:	e8 89 f6 ff ff       	call   401130 <strtol@plt>   #调用一个系统函数
  401aa7:	89 c6                	mov    %eax,%esi
  401aa9:	83 e8 01             	sub    $0x1,%eax      #减1
  401aac:	3d e8 03 00 00       	cmp    $0x3e8,%eax    #比较是否小于1000
  401ab1:	77 1b                	ja     401ace <secret_phase+0x46>
  401ab3:	bf a0 40 40 00       	mov    $0x4040a0,%edi  #传入一个数值
  401ab8:	e8 8d ff ff ff       	call   401a4a <fun7>  #调用函数
  401abd:	83 f8 06             	cmp    $0x6,%eax     #比较这个函数的返回值是否等于6，等于则成功
  401ac0:	74 18                	je     401ada <secret_phase+0x52>
  401ac2:	e8 f6 01 00 00       	call   401cbd <explode_bomb>
  401ac7:	b8 00 00 00 00       	mov    $0x0,%eax
  401acc:	eb 0a                	jmp    401ad8 <secret_phase+0x50>
  401ace:	e8 ea 01 00 00       	call   401cbd <explode_bomb>
  401ad3:	b8 00 00 00 00       	mov    $0x0,%eax
  401ad8:	5d                   	pop    %rbp
  401ad9:	c3                   	ret    
  401ada:	be a8 21 40 00       	mov    $0x4021a8,%esi
  401adf:	bf 01 00 00 00       	mov    $0x1,%edi
  401ae4:	b8 00 00 00 00       	mov    $0x0,%eax
  401ae9:	e8 82 f6 ff ff       	call   401170 <__printf_chk@plt>
  401aee:	e8 2d 04 00 00       	call   401f20 <phase_defused>
  401af3:	b8 01 00 00 00       	mov    $0x1,%eax
  401af8:	eb de                	jmp    401ad8 <secret_phase+0x50>

0000000000401afa <sig_handler>:
  401afa:	f3 0f 1e fa          	endbr64 
  401afe:	55                   	push   %rbp
  401aff:	48 89 e5             	mov    %rsp,%rbp
  401b02:	be a0 22 40 00       	mov    $0x4022a0,%esi
  401b07:	bf 01 00 00 00       	mov    $0x1,%edi
  401b0c:	b8 00 00 00 00       	mov    $0x0,%eax
  401b11:	e8 5a f6 ff ff       	call   401170 <__printf_chk@plt>
  401b16:	bf 03 00 00 00       	mov    $0x3,%edi
  401b1b:	e8 90 f6 ff ff       	call   4011b0 <sleep@plt>
  401b20:	be 8b 23 40 00       	mov    $0x40238b,%esi
  401b25:	bf 01 00 00 00       	mov    $0x1,%edi
  401b2a:	b8 00 00 00 00       	mov    $0x0,%eax
  401b2f:	e8 3c f6 ff ff       	call   401170 <__printf_chk@plt>
  401b34:	48 8b 3d a5 28 00 00 	mov    0x28a5(%rip),%rdi        # 4043e0 <stdout@GLIBC_2.2.5>
  401b3b:	e8 00 f6 ff ff       	call   401140 <fflush@plt>
  401b40:	bf 01 00 00 00       	mov    $0x1,%edi
  401b45:	e8 66 f6 ff ff       	call   4011b0 <sleep@plt>
  401b4a:	be 93 23 40 00       	mov    $0x402393,%esi
  401b4f:	bf 01 00 00 00       	mov    $0x1,%edi
  401b54:	b8 00 00 00 00       	mov    $0x0,%eax
  401b59:	e8 12 f6 ff ff       	call   401170 <__printf_chk@plt>
  401b5e:	bf 10 00 00 00       	mov    $0x10,%edi
  401b63:	e8 38 f6 ff ff       	call   4011a0 <exit@plt>

0000000000401b68 <invalid_phase>:
  401b68:	f3 0f 1e fa          	endbr64 
  401b6c:	55                   	push   %rbp
  401b6d:	48 89 e5             	mov    %rsp,%rbp
  401b70:	48 89 fa             	mov    %rdi,%rdx
  401b73:	be 9c 23 40 00       	mov    $0x40239c,%esi
  401b78:	bf 01 00 00 00       	mov    $0x1,%edi
  401b7d:	b8 00 00 00 00       	mov    $0x0,%eax
  401b82:	e8 e9 f5 ff ff       	call   401170 <__printf_chk@plt>
  401b87:	bf 08 00 00 00       	mov    $0x8,%edi
  401b8c:	e8 0f f6 ff ff       	call   4011a0 <exit@plt>

0000000000401b91 <string_length>:
  401b91:	f3 0f 1e fa          	endbr64 
  401b95:	b8 00 00 00 00       	mov    $0x0,%eax
  401b9a:	eb 07                	jmp    401ba3 <string_length+0x12>
  401b9c:	48 83 c7 01          	add    $0x1,%rdi
  401ba0:	83 c0 01             	add    $0x1,%eax
  401ba3:	80 3f 00             	cmpb   $0x0,(%rdi)
  401ba6:	75 f4                	jne    401b9c <string_length+0xb>
  401ba8:	c3                   	ret    

0000000000401ba9 <strings_not_equal>:
  401ba9:	f3 0f 1e fa          	endbr64 
  401bad:	55                   	push   %rbp
  401bae:	48 89 e5             	mov    %rsp,%rbp
  401bb1:	41 55                	push   %r13
  401bb3:	41 54                	push   %r12
  401bb5:	53                   	push   %rbx
  401bb6:	48 83 ec 08          	sub    $0x8,%rsp
  401bba:	48 89 fb             	mov    %rdi,%rbx
  401bbd:	49 89 f4             	mov    %rsi,%r12
  401bc0:	e8 cc ff ff ff       	call   401b91 <string_length>
  401bc5:	41 89 c5             	mov    %eax,%r13d
  401bc8:	4c 89 e7             	mov    %r12,%rdi
  401bcb:	e8 c1 ff ff ff       	call   401b91 <string_length>
  401bd0:	41 39 c5             	cmp    %eax,%r13d
  401bd3:	74 18                	je     401bed <strings_not_equal+0x44>
  401bd5:	b8 01 00 00 00       	mov    $0x1,%eax
  401bda:	48 83 c4 08          	add    $0x8,%rsp
  401bde:	5b                   	pop    %rbx
  401bdf:	41 5c                	pop    %r12
  401be1:	41 5d                	pop    %r13
  401be3:	5d                   	pop    %rbp
  401be4:	c3                   	ret    
  401be5:	48 83 c3 01          	add    $0x1,%rbx
  401be9:	49 83 c4 01          	add    $0x1,%r12
  401bed:	0f b6 03             	movzbl (%rbx),%eax
  401bf0:	84 c0                	test   %al,%al
  401bf2:	74 0d                	je     401c01 <strings_not_equal+0x58>
  401bf4:	41 38 04 24          	cmp    %al,(%r12)
  401bf8:	74 eb                	je     401be5 <strings_not_equal+0x3c>
  401bfa:	b8 01 00 00 00       	mov    $0x1,%eax
  401bff:	eb d9                	jmp    401bda <strings_not_equal+0x31>
  401c01:	b8 00 00 00 00       	mov    $0x0,%eax
  401c06:	eb d2                	jmp    401bda <strings_not_equal+0x31>

0000000000401c08 <initialize_bomb>:
  401c08:	f3 0f 1e fa          	endbr64 
  401c0c:	55                   	push   %rbp
  401c0d:	48 89 e5             	mov    %rsp,%rbp
  401c10:	be fa 1a 40 00       	mov    $0x401afa,%esi
  401c15:	bf 02 00 00 00       	mov    $0x2,%edi
  401c1a:	e8 01 f5 ff ff       	call   401120 <signal@plt>
  401c1f:	5d                   	pop    %rbp
  401c20:	c3                   	ret    

0000000000401c21 <initialize_bomb_solve>:
  401c21:	f3 0f 1e fa          	endbr64 
  401c25:	c3                   	ret    

0000000000401c26 <blank_line>:
  401c26:	f3 0f 1e fa          	endbr64 
  401c2a:	55                   	push   %rbp
  401c2b:	48 89 e5             	mov    %rsp,%rbp
  401c2e:	41 54                	push   %r12
  401c30:	53                   	push   %rbx
  401c31:	49 89 fc             	mov    %rdi,%r12
  401c34:	41 0f b6 1c 24       	movzbl (%r12),%ebx
  401c39:	84 db                	test   %bl,%bl
  401c3b:	74 1e                	je     401c5b <blank_line+0x35>
  401c3d:	e8 7e f5 ff ff       	call   4011c0 <__ctype_b_loc@plt>
  401c42:	48 8b 00             	mov    (%rax),%rax
  401c45:	49 83 c4 01          	add    $0x1,%r12
  401c49:	48 0f be db          	movsbq %bl,%rbx
  401c4d:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
  401c52:	75 e0                	jne    401c34 <blank_line+0xe>
  401c54:	b8 00 00 00 00       	mov    $0x0,%eax
  401c59:	eb 05                	jmp    401c60 <blank_line+0x3a>
  401c5b:	b8 01 00 00 00       	mov    $0x1,%eax
  401c60:	5b                   	pop    %rbx
  401c61:	41 5c                	pop    %r12
  401c63:	5d                   	pop    %rbp
  401c64:	c3                   	ret    

0000000000401c65 <skip>:
  401c65:	f3 0f 1e fa          	endbr64 
  401c69:	55                   	push   %rbp
  401c6a:	48 89 e5             	mov    %rsp,%rbp
  401c6d:	53                   	push   %rbx
  401c6e:	48 83 ec 08          	sub    $0x8,%rsp
  401c72:	48 63 05 f7 27 00 00 	movslq 0x27f7(%rip),%rax        # 404470 <num_input_strings>
  401c79:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
  401c7d:	48 c1 e7 04          	shl    $0x4,%rdi
  401c81:	48 81 c7 80 44 40 00 	add    $0x404480,%rdi
  401c88:	48 8b 0d 71 27 00 00 	mov    0x2771(%rip),%rcx        # 404400 <infile>
  401c8f:	ba 50 00 00 00       	mov    $0x50,%edx
  401c94:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  401c9b:	e8 c0 f4 ff ff       	call   401160 <__fgets_chk@plt>
  401ca0:	48 89 c3             	mov    %rax,%rbx
  401ca3:	48 85 c0             	test   %rax,%rax
  401ca6:	74 0c                	je     401cb4 <skip+0x4f>
  401ca8:	48 89 c7             	mov    %rax,%rdi
  401cab:	e8 76 ff ff ff       	call   401c26 <blank_line>
  401cb0:	85 c0                	test   %eax,%eax
  401cb2:	75 be                	jne    401c72 <skip+0xd>
  401cb4:	48 89 d8             	mov    %rbx,%rax
  401cb7:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  401cbb:	c9                   	leave  
  401cbc:	c3                   	ret    

0000000000401cbd <explode_bomb>:
  401cbd:	f3 0f 1e fa          	endbr64 
  401cc1:	55                   	push   %rbp
  401cc2:	48 89 e5             	mov    %rsp,%rbp
  401cc5:	be ad 23 40 00       	mov    $0x4023ad,%esi
  401cca:	bf 01 00 00 00       	mov    $0x1,%edi
  401ccf:	b8 00 00 00 00       	mov    $0x0,%eax
  401cd4:	e8 97 f4 ff ff       	call   401170 <__printf_chk@plt>
  401cd9:	be b7 23 40 00       	mov    $0x4023b7,%esi
  401cde:	bf 01 00 00 00       	mov    $0x1,%edi
  401ce3:	b8 00 00 00 00       	mov    $0x0,%eax
  401ce8:	e8 83 f4 ff ff       	call   401170 <__printf_chk@plt>
  401ced:	5d                   	pop    %rbp
  401cee:	c3                   	ret    

0000000000401cef <read_six_numbers>:
  401cef:	f3 0f 1e fa          	endbr64 
  401cf3:	55                   	push   %rbp
  401cf4:	48 89 e5             	mov    %rsp,%rbp
  401cf7:	48 89 f2             	mov    %rsi,%rdx
  401cfa:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
  401cfe:	48 8d 46 14          	lea    0x14(%rsi),%rax
  401d02:	50                   	push   %rax
  401d03:	48 8d 46 10          	lea    0x10(%rsi),%rax
  401d07:	50                   	push   %rax
  401d08:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
  401d0c:	4c 8d 46 08          	lea    0x8(%rsi),%r8
  401d10:	be cf 23 40 00       	mov    $0x4023cf,%esi
  401d15:	b8 00 00 00 00       	mov    $0x0,%eax
  401d1a:	e8 31 f4 ff ff       	call   401150 <__isoc99_sscanf@plt>
  401d1f:	48 83 c4 10          	add    $0x10,%rsp
  401d23:	83 f8 05             	cmp    $0x5,%eax
  401d26:	7e 07                	jle    401d2f <read_six_numbers+0x40>
  401d28:	b8 01 00 00 00       	mov    $0x1,%eax
  401d2d:	c9                   	leave  
  401d2e:	c3                   	ret    
  401d2f:	e8 89 ff ff ff       	call   401cbd <explode_bomb>
  401d34:	b8 00 00 00 00       	mov    $0x0,%eax
  401d39:	eb f2                	jmp    401d2d <read_six_numbers+0x3e>

0000000000401d3b <read_n_numbers>:
  401d3b:	f3 0f 1e fa          	endbr64 
  401d3f:	55                   	push   %rbp
  401d40:	48 89 e5             	mov    %rsp,%rbp
  401d43:	41 56                	push   %r14
  401d45:	41 55                	push   %r13
  401d47:	41 54                	push   %r12
  401d49:	53                   	push   %rbx
  401d4a:	49 89 fe             	mov    %rdi,%r14    #%r14保存输入字符串
  401d4d:	49 89 f5             	mov    %rsi,%r13   #%r13保存数组首地址
  401d50:	41 89 d4             	mov    %edx,%r12d   #%r12保存读入的数字个数为8
  401d53:	bb 00 00 00 00       	mov    $0x0,%ebx    #循环变量i
  401d58:	eb 33                	jmp    401d8d <read_n_numbers+0x52>   #地址跳转
  401d5a:	be e1 23 40 00       	mov    $0x4023e1,%esi      #循环开始地址
  401d5f:	4c 89 f7             	mov    %r14,%rdi
  401d62:	e8 29 f4 ff ff       	call   401190 <strtok@plt>  #调用切割字符串函数
  401d67:	48 89 c7             	mov    %rax,%rdi
  401d6a:	48 85 ff             	test   %rdi,%rdi
  401d6d:	74 3b                	je     401daa <read_n_numbers+0x6f>    
  401d6f:	48 63 c3             	movslq %ebx,%rax
  401d72:	49 8d 54 85 00       	lea    0x0(%r13,%rax,4),%rdx      #获取即将要读入的数据地址
  401d77:	be de 23 40 00       	mov    $0x4023de,%esi
  401d7c:	b8 00 00 00 00       	mov    $0x0,%eax
  401d81:	e8 ca f3 ff ff       	call   401150 <__isoc99_sscanf@plt>  #读入数据
  401d86:	85 c0                	test   %eax,%eax
  401d88:	7e 20                	jle    401daa <read_n_numbers+0x6f>
  401d8a:	83 c3 01             	add    $0x1,%ebx                         #i++
  401d8d:	44 39 e3             	cmp    %r12d,%ebx   #比较是否跳出循环
  401d90:	7d 2b                	jge    401dbd <read_n_numbers+0x82>   #如果循环结束跳出
  401d92:	85 db                	test   %ebx,%ebx
  401d94:	74 c4                	je     401d5a <read_n_numbers+0x1f>
  401d96:	be e1 23 40 00       	mov    $0x4023e1,%esi
  401d9b:	bf 00 00 00 00       	mov    $0x0,%edi
  401da0:	e8 eb f3 ff ff       	call   401190 <strtok@plt>
  401da5:	48 89 c7             	mov    %rax,%rdi
  401da8:	eb c0                	jmp    401d6a <read_n_numbers+0x2f>
  401daa:	e8 0e ff ff ff       	call   401cbd <explode_bomb>
  401daf:	b8 00 00 00 00       	mov    $0x0,%eax
  401db4:	5b                   	pop    %rbx
  401db5:	41 5c                	pop    %r12
  401db7:	41 5d                	pop    %r13
  401db9:	41 5e                	pop    %r14
  401dbb:	5d                   	pop    %rbp
  401dbc:	c3                   	ret    
  401dbd:	b8 01 00 00 00       	mov    $0x1,%eax
  401dc2:	eb f0                	jmp    401db4 <read_n_numbers+0x79>

0000000000401dc4 <read_line>:
  401dc4:	f3 0f 1e fa          	endbr64 
  401dc8:	55                   	push   %rbp
  401dc9:	48 89 e5             	mov    %rsp,%rbp
  401dcc:	53                   	push   %rbx
  401dcd:	48 83 ec 08          	sub    $0x8,%rsp
  401dd1:	b8 00 00 00 00       	mov    $0x0,%eax
  401dd6:	e8 8a fe ff ff       	call   401c65 <skip>
  401ddb:	48 85 c0             	test   %rax,%rax
  401dde:	74 66                	je     401e46 <read_line+0x82>
  401de0:	48 63 05 89 26 00 00 	movslq 0x2689(%rip),%rax        # 404470 <num_input_strings>
  401de7:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
  401deb:	48 c1 e7 04          	shl    $0x4,%rdi
  401def:	48 81 c7 80 44 40 00 	add    $0x404480,%rdi
  401df6:	e8 15 f3 ff ff       	call   401110 <strlen@plt>
  401dfb:	48 89 c3             	mov    %rax,%rbx
  401dfe:	83 f8 4e             	cmp    $0x4e,%eax
  401e01:	0f 8f c0 00 00 00    	jg     401ec7 <read_line+0x103>
  401e07:	8b 15 63 26 00 00    	mov    0x2663(%rip),%edx        # 404470 <num_input_strings>
  401e0d:	83 eb 01             	sub    $0x1,%ebx
  401e10:	48 63 db             	movslq %ebx,%rbx
  401e13:	48 63 ca             	movslq %edx,%rcx
  401e16:	48 8d 04 8d 00 00 00 	lea    0x0(,%rcx,4),%rax
  401e1d:	00 
  401e1e:	48 8d 34 08          	lea    (%rax,%rcx,1),%rsi
  401e22:	48 c1 e6 04          	shl    $0x4,%rsi
  401e26:	c6 84 33 80 44 40 00 	movb   $0x0,0x404480(%rbx,%rsi,1)
  401e2d:	00 
  401e2e:	83 c2 01             	add    $0x1,%edx
  401e31:	89 15 39 26 00 00    	mov    %edx,0x2639(%rip)        # 404470 <num_input_strings>
  401e37:	48 89 f0             	mov    %rsi,%rax
  401e3a:	48 05 80 44 40 00    	add    $0x404480,%rax
  401e40:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  401e44:	c9                   	leave  
  401e45:	c3                   	ret    
  401e46:	48 8b 05 a3 25 00 00 	mov    0x25a3(%rip),%rax        # 4043f0 <stdin@GLIBC_2.2.5>
  401e4d:	48 39 05 ac 25 00 00 	cmp    %rax,0x25ac(%rip)        # 404400 <infile>
  401e54:	74 49                	je     401e9f <read_line+0xdb>
  401e56:	bf e5 23 40 00       	mov    $0x4023e5,%edi
  401e5b:	e8 a0 f2 ff ff       	call   401100 <getenv@plt>
  401e60:	48 85 c0             	test   %rax,%rax
  401e63:	75 58                	jne    401ebd <read_line+0xf9>
  401e65:	48 8b 05 84 25 00 00 	mov    0x2584(%rip),%rax        # 4043f0 <stdin@GLIBC_2.2.5>
  401e6c:	48 89 05 8d 25 00 00 	mov    %rax,0x258d(%rip)        # 404400 <infile>
  401e73:	b8 00 00 00 00       	mov    $0x0,%eax
  401e78:	e8 e8 fd ff ff       	call   401c65 <skip>
  401e7d:	48 85 c0             	test   %rax,%rax
  401e80:	0f 85 5a ff ff ff    	jne    401de0 <read_line+0x1c>
  401e86:	be e0 22 40 00       	mov    $0x4022e0,%esi
  401e8b:	bf 01 00 00 00       	mov    $0x1,%edi
  401e90:	e8 db f2 ff ff       	call   401170 <__printf_chk@plt>
  401e95:	bf 00 00 00 00       	mov    $0x0,%edi
  401e9a:	e8 01 f3 ff ff       	call   4011a0 <exit@plt>
  401e9f:	be e0 22 40 00       	mov    $0x4022e0,%esi
  401ea4:	bf 01 00 00 00       	mov    $0x1,%edi
  401ea9:	b8 00 00 00 00       	mov    $0x0,%eax
  401eae:	e8 bd f2 ff ff       	call   401170 <__printf_chk@plt>
  401eb3:	bf 08 00 00 00       	mov    $0x8,%edi
  401eb8:	e8 e3 f2 ff ff       	call   4011a0 <exit@plt>
  401ebd:	bf 00 00 00 00       	mov    $0x0,%edi
  401ec2:	e8 d9 f2 ff ff       	call   4011a0 <exit@plt>
  401ec7:	be f0 23 40 00       	mov    $0x4023f0,%esi
  401ecc:	bf 01 00 00 00       	mov    $0x1,%edi
  401ed1:	b8 00 00 00 00       	mov    $0x0,%eax
  401ed6:	e8 95 f2 ff ff       	call   401170 <__printf_chk@plt>
  401edb:	8b 05 8f 25 00 00    	mov    0x258f(%rip),%eax        # 404470 <num_input_strings>
  401ee1:	8d 50 01             	lea    0x1(%rax),%edx
  401ee4:	89 15 86 25 00 00    	mov    %edx,0x2586(%rip)        # 404470 <num_input_strings>
  401eea:	48 98                	cltq   
  401eec:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  401ef0:	48 c1 e0 04          	shl    $0x4,%rax
  401ef4:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
  401efb:	75 6e 63 
  401efe:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
  401f05:	2a 2a 00 
  401f08:	48 89 b0 80 44 40 00 	mov    %rsi,0x404480(%rax)
  401f0f:	48 89 b8 88 44 40 00 	mov    %rdi,0x404488(%rax)
  401f16:	e8 a2 fd ff ff       	call   401cbd <explode_bomb>
  401f1b:	e9 e7 fe ff ff       	jmp    401e07 <read_line+0x43>

0000000000401f20 <phase_defused>:
  401f20:	f3 0f 1e fa          	endbr64     #计数变量，当7个阶段全部完成才能跳转
  401f24:	83 3d 45 25 00 00 07 	cmpl   $0x7,0x2545(%rip)        # 404470 <num_input_strings>
  401f2b:	74 01                	je     401f2e <phase_defused+0xe>
  401f2d:	c3                   	ret    
  401f2e:	55                   	push   %rbp
  401f2f:	48 89 e5             	mov    %rsp,%rbp
  401f32:	48 83 ec 60          	sub    $0x60,%rsp      
  401f36:	4c 8d 45 b0          	lea    -0x50(%rbp),%r8     #保存变量值
  401f3a:	48 8d 4d a8          	lea    -0x58(%rbp),%rcx     #保存变量值
  401f3e:	48 8d 55 ac          	lea    -0x54(%rbp),%rdx     #保存变量值
  401f42:	be 0c 24 40 00       	mov    $0x40240c,%esi     #要检查输入的格式
  401f47:	bf c0 45 40 00       	mov    $0x4045c0,%edi    #阶段四我输入的字符串
  401f4c:	b8 00 00 00 00       	mov    $0x0,%eax
  401f51:	e8 fa f1 ff ff       	call   401150 <__isoc99_sscanf@plt>   #检查输入
  401f56:	83 f8 03             	cmp    $0x3,%eax
  401f59:	74 16                	je     401f71 <phase_defused+0x51>   #若追加了字符串则跳转
  401f5b:	be 60 23 40 00       	mov    $0x402360,%esi
  401f60:	bf 01 00 00 00       	mov    $0x1,%edi
  401f65:	b8 00 00 00 00       	mov    $0x0,%eax
  401f6a:	e8 01 f2 ff ff       	call   401170 <__printf_chk@plt>
  401f6f:	c9                   	leave  
  401f70:	c3                   	ret    
  401f71:	be 15 24 40 00       	mov    $0x402415,%esi   #追加的字符串
  401f76:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
  401f7a:	e8 2a fc ff ff       	call   401ba9 <strings_not_equal>   #调用看是否相等
  401f7f:	85 c0                	test   %eax,%eax
  401f81:	75 d8                	jne    401f5b <phase_defused+0x3b>   #不相等则退出
  401f83:	be 00 23 40 00       	mov    $0x402300,%esi
  401f88:	bf 01 00 00 00       	mov    $0x1,%edi
  401f8d:	e8 de f1 ff ff       	call   401170 <__printf_chk@plt>
  401f92:	be 28 23 40 00       	mov    $0x402328,%esi
  401f97:	bf 01 00 00 00       	mov    $0x1,%edi
  401f9c:	b8 00 00 00 00       	mov    $0x0,%eax
  401fa1:	e8 ca f1 ff ff       	call   401170 <__printf_chk@plt>
  401fa6:	b8 00 00 00 00       	mov    $0x0,%eax
  401fab:	e8 d8 fa ff ff       	call   401a88 <secret_phase>   #调用隐藏阶段
  401fb0:	eb a9                	jmp    401f5b <phase_defused+0x3b>

Disassembly of section .fini:

0000000000401fb4 <_fini>:
  401fb4:	f3 0f 1e fa          	endbr64 
  401fb8:	48 83 ec 08          	sub    $0x8,%rsp
  401fbc:	48 83 c4 08          	add    $0x8,%rsp
  401fc0:	c3                   	ret    
