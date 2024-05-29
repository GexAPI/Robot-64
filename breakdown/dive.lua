function dive()
	skipped = true;
	if not paused then
		if not talkto then
			if canmove then
				if not onejump then
					if map.Name ~= "Boss" then
						if map.Name ~= "MAKE" then
							dancing = false;
							if hasboard then
								if not crouch then
									if not onrope then
										if not pole then
											if not swimming then
												if not pound then
													if not skate then
														longjump = false;
														skate = true;
														potand = math.pi * 2;
													elseif not ground then
														if -0.2 < boarderp.Z then
															skatestat = { "Kickflip", skatestat[2] + 100, skatestat[3] + 1, false, skatestat[5] };
															boarderp = boarderp + Vector3.new(0, 0, -math.pi * 2);
														end;
													end;
												elseif hasflame then
													flameon = not flameon;
												elseif ledgegrab then
													if not debounce then
														psound(vis.torso, "jump2");
														debounce = true;
														jumping = true;
														wallrun = nil;
														ledgegrab = nil;
														cvt(Vector3.new(0, 30, 0) + point.rightVector * 10);
														rotand = rotand + 1;
														wait(0.2);
														cvt(Vector3.new(0, char.Velocity.Y, 0) - wallnorm * 10 - point.rightVector * 7);
														wait(0.2);
														djump = false;
														debounce = false;
														jumping = false;
													elseif wallrun then
														if not jumping then
															skatestat = { "Wall jump", skatestat[2] + 100, skatestat[3] + 1, false, skatestat[5] };
															psound(vis.torso, "jump2");
															jumping = true;
															cvt(v2(char.Velocity, 30) + wallnorm * 30);
															point = CFrame.new(Vector3.new(), -2 * point.lookVector:Dot(wallnorm) * wallnorm + point.lookVector);
															djump = true;
															wait(0.2);
															jumping = false;
														end;
													elseif swimming then
														return;
													elseif not sliding then
														if not pole then
															if not onrope then
																if not wallrun then
																	if not ledgegrab then
																		if not attack then
																			if not pound then
																				psound(vis.torso, "dive");
																				longjump = false;
																				pound = false;
																				rolling = false;
																				char.Anchored = false;
																				jumping = true;
																				sliding = true;
																				if hasfly then
																					if not djump then
																						djump = true;
																						flying = true;
																						flypitch = 0.5;
																						flyspeed = 2;
																						if ground then
																							v98 = 40;
																						else
																							v98 = 20;
																						end;
																						cvt(point.lookVector * 50 + Vector3.new(0, v98));
																						potand = math.pi * 2 * fallvr;
																					else
																						if ground then
																							v99 = 30;
																						else
																							v99 = 20;
																						end;
																						cvt(point.lookVector * 40 + Vector3.new(0, v99));
																					end;
																				else
																					if ground then
																						v99 = 30;
																					else
																						v99 = 20;
																					end;
																					cvt(point.lookVector * 40 + Vector3.new(0, v99));
																				end;
																				wait(0.3);
																				jumping = false;
																			elseif ground then
																				if not jumping then
																					if ground.Name ~= "Slide" then
																						psound(vis.torso, "jump2");
																						rolling = true;
																						jumping = true;
																						cvt(v2(char.Velocity, 20));
																						djump = false;
																						botand = math.pi * 2;
																						wait(0.2);
																						sliding = false;
																						jumping = false;
																						wait(0.1);
																						rolling = false;
																					elseif flying then
																						if not debounce then
																							debounce = true;
																							potand = potand + math.pi * 2 * fallvr;
																							wait(0.5);
																							debounce = false;
																						end;
																					end;
																				elseif flying then
																					if not debounce then
																						debounce = true;
																						potand = potand + math.pi * 2 * fallvr;
																						wait(0.5);
																						debounce = false;
																					end;
																				end;
																			elseif flying then
																				if not debounce then
																					debounce = true;
																					potand = potand + math.pi * 2 * fallvr;
																					wait(0.5);
																					debounce = false;
																				end;
																			end;
																		elseif ground then
																			if not jumping then
																				if ground.Name ~= "Slide" then
																					psound(vis.torso, "jump2");
																					rolling = true;
																					jumping = true;
																					cvt(v2(char.Velocity, 20));
																					djump = false;
																					botand = math.pi * 2;
																					wait(0.2);
																					sliding = false;
																					jumping = false;
																					wait(0.1);
																					rolling = false;
																				elseif flying then
																					if not debounce then
																						debounce = true;
																						potand = potand + math.pi * 2 * fallvr;
																						wait(0.5);
																						debounce = false;
																					end;
																				end;
																			elseif flying then
																				if not debounce then
																					debounce = true;
																					potand = potand + math.pi * 2 * fallvr;
																					wait(0.5);
																					debounce = false;
																				end;
																			end;
																		elseif flying then
																			if not debounce then
																				debounce = true;
																				potand = potand + math.pi * 2 * fallvr;
																				wait(0.5);
																				debounce = false;
																			end;
																		end;
																	elseif ground then
																		if not jumping then
																			if ground.Name ~= "Slide" then
																				psound(vis.torso, "jump2");
																				rolling = true;
																				jumping = true;
																				cvt(v2(char.Velocity, 20));
																				djump = false;
																				botand = math.pi * 2;
																				wait(0.2);
																				sliding = false;
																				jumping = false;
																				wait(0.1);
																				rolling = false;
																			elseif flying then
																				if not debounce then
																					debounce = true;
																					potand = potand + math.pi * 2 * fallvr;
																					wait(0.5);
																					debounce = false;
																				end;
																			end;
																		elseif flying then
																			if not debounce then
																				debounce = true;
																				potand = potand + math.pi * 2 * fallvr;
																				wait(0.5);
																				debounce = false;
																			end;
																		end;
																	elseif flying then
																		if not debounce then
																			debounce = true;
																			potand = potand + math.pi * 2 * fallvr;
																			wait(0.5);
																			debounce = false;
																		end;
																	end;
																elseif ground then
																	if not jumping then
																		if ground.Name ~= "Slide" then
																			psound(vis.torso, "jump2");
																			rolling = true;
																			jumping = true;
																			cvt(v2(char.Velocity, 20));
																			djump = false;
																			botand = math.pi * 2;
																			wait(0.2);
																			sliding = false;
																			jumping = false;
																			wait(0.1);
																			rolling = false;
																		elseif flying then
																			if not debounce then
																				debounce = true;
																				potand = potand + math.pi * 2 * fallvr;
																				wait(0.5);
																				debounce = false;
																			end;
																		end;
																	elseif flying then
																		if not debounce then
																			debounce = true;
																			potand = potand + math.pi * 2 * fallvr;
																			wait(0.5);
																			debounce = false;
																		end;
																	end;
																elseif flying then
																	if not debounce then
																		debounce = true;
																		potand = potand + math.pi * 2 * fallvr;
																		wait(0.5);
																		debounce = false;
																	end;
																end;
															elseif ground then
																if not jumping then
																	if ground.Name ~= "Slide" then
																		psound(vis.torso, "jump2");
																		rolling = true;
																		jumping = true;
																		cvt(v2(char.Velocity, 20));
																		djump = false;
																		botand = math.pi * 2;
																		wait(0.2);
																		sliding = false;
																		jumping = false;
																		wait(0.1);
																		rolling = false;
																	elseif flying then
																		if not debounce then
																			debounce = true;
																			potand = potand + math.pi * 2 * fallvr;
																			wait(0.5);
																			debounce = false;
																		end;
																	end;
																elseif flying then
																	if not debounce then
																		debounce = true;
																		potand = potand + math.pi * 2 * fallvr;
																		wait(0.5);
																		debounce = false;
																	end;
																end;
															elseif flying then
																if not debounce then
																	debounce = true;
																	potand = potand + math.pi * 2 * fallvr;
																	wait(0.5);
																	debounce = false;
																end;
															end;
														elseif ground then
															if not jumping then
																if ground.Name ~= "Slide" then
																	psound(vis.torso, "jump2");
																	rolling = true;
																	jumping = true;
																	cvt(v2(char.Velocity, 20));
																	djump = false;
																	botand = math.pi * 2;
																	wait(0.2);
																	sliding = false;
																	jumping = false;
																	wait(0.1);
																	rolling = false;
																elseif flying then
																	if not debounce then
																		debounce = true;
																		potand = potand + math.pi * 2 * fallvr;
																		wait(0.5);
																		debounce = false;
																	end;
																end;
															elseif flying then
																if not debounce then
																	debounce = true;
																	potand = potand + math.pi * 2 * fallvr;
																	wait(0.5);
																	debounce = false;
																end;
															end;
														elseif flying then
															if not debounce then
																debounce = true;
																potand = potand + math.pi * 2 * fallvr;
																wait(0.5);
																debounce = false;
															end;
														end;
													elseif ground then
														if not jumping then
															if ground.Name ~= "Slide" then
																psound(vis.torso, "jump2");
																rolling = true;
																jumping = true;
																cvt(v2(char.Velocity, 20));
																djump = false;
																botand = math.pi * 2;
																wait(0.2);
																sliding = false;
																jumping = false;
																wait(0.1);
																rolling = false;
															elseif flying then
																if not debounce then
																	debounce = true;
																	potand = potand + math.pi * 2 * fallvr;
																	wait(0.5);
																	debounce = false;
																end;
															end;
														elseif flying then
															if not debounce then
																debounce = true;
																potand = potand + math.pi * 2 * fallvr;
																wait(0.5);
																debounce = false;
															end;
														end;
													elseif flying then
														if not debounce then
															debounce = true;
															potand = potand + math.pi * 2 * fallvr;
															wait(0.5);
															debounce = false;
														end;
													end;
												elseif wallrun then
													if not jumping then
														skatestat = { "Wall jump", skatestat[2] + 100, skatestat[3] + 1, false, skatestat[5] };
														psound(vis.torso, "jump2");
														jumping = true;
														cvt(v2(char.Velocity, 30) + wallnorm * 30);
														point = CFrame.new(Vector3.new(), -2 * point.lookVector:Dot(wallnorm) * wallnorm + point.lookVector);
														djump = true;
														wait(0.2);
														jumping = false;
													end;
												elseif swimming then
													return;
												elseif not sliding then
													if not pole then
														if not onrope then
															if not wallrun then
																if not ledgegrab then
																	if not attack then
																		if not pound then
																			psound(vis.torso, "dive");
																			longjump = false;
																			pound = false;
																			rolling = false;
																			char.Anchored = false;
																			jumping = true;
																			sliding = true;
																			if hasfly then
																				if not djump then
																					djump = true;
																					flying = true;
																					flypitch = 0.5;
																					flyspeed = 2;
																					if ground then
																						v98 = 40;
																					else
																						v98 = 20;
																					end;
																					cvt(point.lookVector * 50 + Vector3.new(0, v98));
																					potand = math.pi * 2 * fallvr;
																				else
																					if ground then
																						v99 = 30;
																					else
																						v99 = 20;
																					end;
																					cvt(point.lookVector * 40 + Vector3.new(0, v99));
																				end;
																			else
																				if ground then
																					v99 = 30;
																				else
																					v99 = 20;
																				end;
																				cvt(point.lookVector * 40 + Vector3.new(0, v99));
																			end;
																			wait(0.3);
																			jumping = false;
																		elseif ground then
																			if not jumping then
																				if ground.Name ~= "Slide" then
																					psound(vis.torso, "jump2");
																					rolling = true;
																					jumping = true;
																					cvt(v2(char.Velocity, 20));
																					djump = false;
																					botand = math.pi * 2;
																					wait(0.2);
																					sliding = false;
																					jumping = false;
																					wait(0.1);
																					rolling = false;
																				elseif flying then
																					if not debounce then
																						debounce = true;
																						potand = potand + math.pi * 2 * fallvr;
																						wait(0.5);
																						debounce = false;
																					end;
																				end;
																			elseif flying then
																				if not debounce then
																					debounce = true;
																					potand = potand + math.pi * 2 * fallvr;
																					wait(0.5);
																					debounce = false;
																				end;
																			end;
																		elseif flying then
																			if not debounce then
																				debounce = true;
																				potand = potand + math.pi * 2 * fallvr;
																				wait(0.5);
																				debounce = false;
																			end;
																		end;
																	elseif ground then
																		if not jumping then
																			if ground.Name ~= "Slide" then
																				psound(vis.torso, "jump2");
																				rolling = true;
																				jumping = true;
																				cvt(v2(char.Velocity, 20));
																				djump = false;
																				botand = math.pi * 2;
																				wait(0.2);
																				sliding = false;
																				jumping = false;
																				wait(0.1);
																				rolling = false;
																			elseif flying then
																				if not debounce then
																					debounce = true;
																					potand = potand + math.pi * 2 * fallvr;
																					wait(0.5);
																					debounce = false;
																				end;
																			end;
																		elseif flying then
																			if not debounce then
																				debounce = true;
																				potand = potand + math.pi * 2 * fallvr;
																				wait(0.5);
																				debounce = false;
																			end;
																		end;
																	elseif flying then
																		if not debounce then
																			debounce = true;
																			potand = potand + math.pi * 2 * fallvr;
																			wait(0.5);
																			debounce = false;
																		end;
																	end;
																elseif ground then
																	if not jumping then
																		if ground.Name ~= "Slide" then
																			psound(vis.torso, "jump2");
																			rolling = true;
																			jumping = true;
																			cvt(v2(char.Velocity, 20));
																			djump = false;
																			botand = math.pi * 2;
																			wait(0.2);
																			sliding = false;
																			jumping = false;
																			wait(0.1);
																			rolling = false;
																		elseif flying then
																			if not debounce then
																				debounce = true;
																				potand = potand + math.pi * 2 * fallvr;
																				wait(0.5);
																				debounce = false;
																			end;
																		end;
																	elseif flying then
																		if not debounce then
																			debounce = true;
																			potand = potand + math.pi * 2 * fallvr;
																			wait(0.5);
																			debounce = false;
																		end;
																	end;
																elseif flying then
																	if not debounce then
																		debounce = true;
																		potand = potand + math.pi * 2 * fallvr;
																		wait(0.5);
																		debounce = false;
																	end;
																end;
															elseif ground then
																if not jumping then
																	if ground.Name ~= "Slide" then
																		psound(vis.torso, "jump2");
																		rolling = true;
																		jumping = true;
																		cvt(v2(char.Velocity, 20));
																		djump = false;
																		botand = math.pi * 2;
																		wait(0.2);
																		sliding = false;
																		jumping = false;
																		wait(0.1);
																		rolling = false;
																	elseif flying then
																		if not debounce then
																			debounce = true;
																			potand = potand + math.pi * 2 * fallvr;
																			wait(0.5);
																			debounce = false;
																		end;
																	end;
																elseif flying then
																	if not debounce then
																		debounce = true;
																		potand = potand + math.pi * 2 * fallvr;
																		wait(0.5);
																		debounce = false;
																	end;
																end;
															elseif flying then
																if not debounce then
																	debounce = true;
																	potand = potand + math.pi * 2 * fallvr;
																	wait(0.5);
																	debounce = false;
																end;
															end;
														elseif ground then
															if not jumping then
																if ground.Name ~= "Slide" then
																	psound(vis.torso, "jump2");
																	rolling = true;
																	jumping = true;
																	cvt(v2(char.Velocity, 20));
																	djump = false;
																	botand = math.pi * 2;
																	wait(0.2);
																	sliding = false;
																	jumping = false;
																	wait(0.1);
																	rolling = false;
																elseif flying then
																	if not debounce then
																		debounce = true;
																		potand = potand + math.pi * 2 * fallvr;
																		wait(0.5);
																		debounce = false;
																	end;
																end;
															elseif flying then
																if not debounce then
																	debounce = true;
																	potand = potand + math.pi * 2 * fallvr;
																	wait(0.5);
																	debounce = false;
																end;
															end;
														elseif flying then
															if not debounce then
																debounce = true;
																potand = potand + math.pi * 2 * fallvr;
																wait(0.5);
																debounce = false;
															end;
														end;
													elseif ground then
														if not jumping then
															if ground.Name ~= "Slide" then
																psound(vis.torso, "jump2");
																rolling = true;
																jumping = true;
																cvt(v2(char.Velocity, 20));
																djump = false;
																botand = math.pi * 2;
																wait(0.2);
																sliding = false;
																jumping = false;
																wait(0.1);
																rolling = false;
															elseif flying then
																if not debounce then
																	debounce = true;
																	potand = potand + math.pi * 2 * fallvr;
																	wait(0.5);
																	debounce = false;
																end;
															end;
														elseif flying then
															if not debounce then
																debounce = true;
																potand = potand + math.pi * 2 * fallvr;
																wait(0.5);
																debounce = false;
															end;
														end;
													elseif flying then
														if not debounce then
															debounce = true;
															potand = potand + math.pi * 2 * fallvr;
															wait(0.5);
															debounce = false;
														end;
													end;
												elseif ground then
													if not jumping then
														if ground.Name ~= "Slide" then
															psound(vis.torso, "jump2");
															rolling = true;
															jumping = true;
															cvt(v2(char.Velocity, 20));
															djump = false;
															botand = math.pi * 2;
															wait(0.2);
															sliding = false;
															jumping = false;
															wait(0.1);
															rolling = false;
														elseif flying then
															if not debounce then
																debounce = true;
																potand = potand + math.pi * 2 * fallvr;
																wait(0.5);
																debounce = false;
															end;
														end;
													elseif flying then
														if not debounce then
															debounce = true;
															potand = potand + math.pi * 2 * fallvr;
															wait(0.5);
															debounce = false;
														end;
													end;
												elseif flying then
													if not debounce then
														debounce = true;
														potand = potand + math.pi * 2 * fallvr;
														wait(0.5);
														debounce = false;
													end;
												end;
											elseif hasflame then
												flameon = not flameon;
											elseif ledgegrab then
												if not debounce then
													psound(vis.torso, "jump2");
													debounce = true;
													jumping = true;
													wallrun = nil;
													ledgegrab = nil;
													cvt(Vector3.new(0, 30, 0) + point.rightVector * 10);
													rotand = rotand + 1;
													wait(0.2);
													cvt(Vector3.new(0, char.Velocity.Y, 0) - wallnorm * 10 - point.rightVector * 7);
													wait(0.2);
													djump = false;
													debounce = false;
													jumping = false;
												elseif wallrun then
													if not jumping then
														skatestat = { "Wall jump", skatestat[2] + 100, skatestat[3] + 1, false, skatestat[5] };
														psound(vis.torso, "jump2");
														jumping = true;
														cvt(v2(char.Velocity, 30) + wallnorm * 30);
														point = CFrame.new(Vector3.new(), -2 * point.lookVector:Dot(wallnorm) * wallnorm + point.lookVector);
														djump = true;
														wait(0.2);
														jumping = false;
													end;
												elseif swimming then
													return;
												elseif not sliding then
													if not pole then
														if not onrope then
															if not wallrun then
																if not ledgegrab then
																	if not attack then
																		if not pound then
																			psound(vis.torso, "dive");
																			longjump = false;
																			pound = false;
																			rolling = false;
																			char.Anchored = false;
																			jumping = true;
																			sliding = true;
																			if hasfly then
																				if not djump then
																					djump = true;
																					flying = true;
																					flypitch = 0.5;
																					flyspeed = 2;
																					if ground then
																						v98 = 40;
																					else
																						v98 = 20;
																					end;
																					cvt(point.lookVector * 50 + Vector3.new(0, v98));
																					potand = math.pi * 2 * fallvr;
																				else
																					if ground then
																						v99 = 30;
																					else
																						v99 = 20;
																					end;
																					cvt(point.lookVector * 40 + Vector3.new(0, v99));
																				end;
																			else
																				if ground then
																					v99 = 30;
																				else
																					v99 = 20;
																				end;
																				cvt(point.lookVector * 40 + Vector3.new(0, v99));
																			end;
																			wait(0.3);
																			jumping = false;
																		elseif ground then
																			if not jumping then
																				if ground.Name ~= "Slide" then
																					psound(vis.torso, "jump2");
																					rolling = true;
																					jumping = true;
																					cvt(v2(char.Velocity, 20));
																					djump = false;
																					botand = math.pi * 2;
																					wait(0.2);
																					sliding = false;
																					jumping = false;
																					wait(0.1);
																					rolling = false;
																				elseif flying then
																					if not debounce then
																						debounce = true;
																						potand = potand + math.pi * 2 * fallvr;
																						wait(0.5);
																						debounce = false;
																					end;
																				end;
																			elseif flying then
																				if not debounce then
																					debounce = true;
																					potand = potand + math.pi * 2 * fallvr;
																					wait(0.5);
																					debounce = false;
																				end;
																			end;
																		elseif flying then
																			if not debounce then
																				debounce = true;
																				potand = potand + math.pi * 2 * fallvr;
																				wait(0.5);
																				debounce = false;
																			end;
																		end;
																	elseif ground then
																		if not jumping then
																			if ground.Name ~= "Slide" then
																				psound(vis.torso, "jump2");
																				rolling = true;
																				jumping = true;
																				cvt(v2(char.Velocity, 20));
																				djump = false;
																				botand = math.pi * 2;
																				wait(0.2);
																				sliding = false;
																				jumping = false;
																				wait(0.1);
																				rolling = false;
																			elseif flying then
																				if not debounce then
																					debounce = true;
																					potand = potand + math.pi * 2 * fallvr;
																					wait(0.5);
																					debounce = false;
																				end;
																			end;
																		elseif flying then
																			if not debounce then
																				debounce = true;
																				potand = potand + math.pi * 2 * fallvr;
																				wait(0.5);
																				debounce = false;
																			end;
																		end;
																	elseif flying then
																		if not debounce then
																			debounce = true;
																			potand = potand + math.pi * 2 * fallvr;
																			wait(0.5);
																			debounce = false;
																		end;
																	end;
																elseif ground then
																	if not jumping then
																		if ground.Name ~= "Slide" then
																			psound(vis.torso, "jump2");
																			rolling = true;
																			jumping = true;
																			cvt(v2(char.Velocity, 20));
																			djump = false;
																			botand = math.pi * 2;
																			wait(0.2);
																			sliding = false;
																			jumping = false;
																			wait(0.1);
																			rolling = false;
																		elseif flying then
																			if not debounce then
																				debounce = true;
																				potand = potand + math.pi * 2 * fallvr;
																				wait(0.5);
																				debounce = false;
																			end;
																		end;
																	elseif flying then
																		if not debounce then
																			debounce = true;
																			potand = potand + math.pi * 2 * fallvr;
																			wait(0.5);
																			debounce = false;
																		end;
																	end;
																elseif flying then
																	if not debounce then
																		debounce = true;
																		potand = potand + math.pi * 2 * fallvr;
																		wait(0.5);
																		debounce = false;
																	end;
																end;
															elseif ground then
																if not jumping then
																	if ground.Name ~= "Slide" then
																		psound(vis.torso, "jump2");
																		rolling = true;
																		jumping = true;
																		cvt(v2(char.Velocity, 20));
																		djump = false;
																		botand = math.pi * 2;
																		wait(0.2);
																		sliding = false;
																		jumping = false;
																		wait(0.1);
																		rolling = false;
																	elseif flying then
																		if not debounce then
																			debounce = true;
																			potand = potand + math.pi * 2 * fallvr;
																			wait(0.5);
																			debounce = false;
																		end;
																	end;
																elseif flying then
																	if not debounce then
																		debounce = true;
																		potand = potand + math.pi * 2 * fallvr;
																		wait(0.5);
																		debounce = false;
																	end;
																end;
															elseif flying then
																if not debounce then
																	debounce = true;
																	potand = potand + math.pi * 2 * fallvr;
																	wait(0.5);
																	debounce = false;
																end;
															end;
														elseif ground then
															if not jumping then
																if ground.Name ~= "Slide" then
																	psound(vis.torso, "jump2");
																	rolling = true;
																	jumping = true;
																	cvt(v2(char.Velocity, 20));
																	djump = false;
																	botand = math.pi * 2;
																	wait(0.2);
																	sliding = false;
																	jumping = false;
																	wait(0.1);
																	rolling = false;
																elseif flying then
																	if not debounce then
																		debounce = true;
																		potand = potand + math.pi * 2 * fallvr;
																		wait(0.5);
																		debounce = false;
																	end;
																end;
															elseif flying then
																if not debounce then
																	debounce = true;
																	potand = potand + math.pi * 2 * fallvr;
																	wait(0.5);
																	debounce = false;
																end;
															end;
														elseif flying then
															if not debounce then
																debounce = true;
																potand = potand + math.pi * 2 * fallvr;
																wait(0.5);
																debounce = false;
															end;
														end;
													elseif ground then
														if not jumping then
															if ground.Name ~= "Slide" then
																psound(vis.torso, "jump2");
																rolling = true;
																jumping = true;
																cvt(v2(char.Velocity, 20));
																djump = false;
																botand = math.pi * 2;
																wait(0.2);
																sliding = false;
																jumping = false;
																wait(0.1);
																rolling = false;
															elseif flying then
																if not debounce then
																	debounce = true;
																	potand = potand + math.pi * 2 * fallvr;
																	wait(0.5);
																	debounce = false;
																end;
															end;
														elseif flying then
															if not debounce then
																debounce = true;
																potand = potand + math.pi * 2 * fallvr;
																wait(0.5);
																debounce = false;
															end;
														end;
													elseif flying then
														if not debounce then
															debounce = true;
															potand = potand + math.pi * 2 * fallvr;
															wait(0.5);
															debounce = false;
														end;
													end;
												elseif ground then
													if not jumping then
														if ground.Name ~= "Slide" then
															psound(vis.torso, "jump2");
															rolling = true;
															jumping = true;
															cvt(v2(char.Velocity, 20));
															djump = false;
															botand = math.pi * 2;
															wait(0.2);
															sliding = false;
															jumping = false;
															wait(0.1);
															rolling = false;
														elseif flying then
															if not debounce then
																debounce = true;
																potand = potand + math.pi * 2 * fallvr;
																wait(0.5);
																debounce = false;
															end;
														end;
													elseif flying then
														if not debounce then
															debounce = true;
															potand = potand + math.pi * 2 * fallvr;
															wait(0.5);
															debounce = false;
														end;
													end;
												elseif flying then
													if not debounce then
														debounce = true;
														potand = potand + math.pi * 2 * fallvr;
														wait(0.5);
														debounce = false;
													end;
												end;
											elseif wallrun then
												if not jumping then
													skatestat = { "Wall jump", skatestat[2] + 100, skatestat[3] + 1, false, skatestat[5] };
													psound(vis.torso, "jump2");
													jumping = true;
													cvt(v2(char.Velocity, 30) + wallnorm * 30);
													point = CFrame.new(Vector3.new(), -2 * point.lookVector:Dot(wallnorm) * wallnorm + point.lookVector);
													djump = true;
													wait(0.2);
													jumping = false;
												end;
											elseif swimming then
												return;
											elseif not sliding then
												if not pole then
													if not onrope then
														if not wallrun then
															if not ledgegrab then
																if not attack then
																	if not pound then
																		psound(vis.torso, "dive");
																		longjump = false;
																		pound = false;
																		rolling = false;
																		char.Anchored = false;
																		jumping = true;
																		sliding = true;
																		if hasfly then
																			if not djump then
																				djump = true;
																				flying = true;
																				flypitch = 0.5;
																				flyspeed = 2;
																				if ground then
																					v98 = 40;
																				else
																					v98 = 20;
																				end;
																				cvt(point.lookVector * 50 + Vector3.new(0, v98));
																				potand = math.pi * 2 * fallvr;
																			else
																				if ground then
																					v99 = 30;
																				else
																					v99 = 20;
																				end;
																				cvt(point.lookVector * 40 + Vector3.new(0, v99));
																			end;
																		else
																			if ground then
																				v99 = 30;
																			else
																				v99 = 20;
																			end;
																			cvt(point.lookVector * 40 + Vector3.new(0, v99));
																		end;
																		wait(0.3);
																		jumping = false;
																	elseif ground then
																		if not jumping then
																			if ground.Name ~= "Slide" then
																				psound(vis.torso, "jump2");
																				rolling = true;
																				jumping = true;
																				cvt(v2(char.Velocity, 20));
																				djump = false;
																				botand = math.pi * 2;
																				wait(0.2);
																				sliding = false;
																				jumping = false;
																				wait(0.1);
																				rolling = false;
																			elseif flying then
																				if not debounce then
																					debounce = true;
																					potand = potand + math.pi * 2 * fallvr;
																					wait(0.5);
																					debounce = false;
																				end;
																			end;
																		elseif flying then
																			if not debounce then
																				debounce = true;
																				potand = potand + math.pi * 2 * fallvr;
																				wait(0.5);
																				debounce = false;
																			end;
																		end;
																	elseif flying then
																		if not debounce then
																			debounce = true;
																			potand = potand + math.pi * 2 * fallvr;
																			wait(0.5);
																			debounce = false;
																		end;
																	end;
																elseif ground then
																	if not jumping then
																		if ground.Name ~= "Slide" then
																			psound(vis.torso, "jump2");
																			rolling = true;
																			jumping = true;
																			cvt(v2(char.Velocity, 20));
																			djump = false;
																			botand = math.pi * 2;
																			wait(0.2);
																			sliding = false;
																			jumping = false;
																			wait(0.1);
																			rolling = false;
																		elseif flying then
																			if not debounce then
																				debounce = true;
																				potand = potand + math.pi * 2 * fallvr;
																				wait(0.5);
																				debounce = false;
																			end;
																		end;
																	elseif flying then
																		if not debounce then
																			debounce = true;
																			potand = potand + math.pi * 2 * fallvr;
																			wait(0.5);
																			debounce = false;
																		end;
																	end;
																elseif flying then
																	if not debounce then
																		debounce = true;
																		potand = potand + math.pi * 2 * fallvr;
																		wait(0.5);
																		debounce = false;
																	end;
																end;
															elseif ground then
																if not jumping then
																	if ground.Name ~= "Slide" then
																		psound(vis.torso, "jump2");
																		rolling = true;
																		jumping = true;
																		cvt(v2(char.Velocity, 20));
																		djump = false;
																		botand = math.pi * 2;
																		wait(0.2);
																		sliding = false;
																		jumping = false;
																		wait(0.1);
																		rolling = false;
																	elseif flying then
																		if not debounce then
																			debounce = true;
																			potand = potand + math.pi * 2 * fallvr;
																			wait(0.5);
																			debounce = false;
																		end;
																	end;
																elseif flying then
																	if not debounce then
																		debounce = true;
																		potand = potand + math.pi * 2 * fallvr;
																		wait(0.5);
																		debounce = false;
																	end;
																end;
															elseif flying then
																if not debounce then
																	debounce = true;
																	potand = potand + math.pi * 2 * fallvr;
																	wait(0.5);
																	debounce = false;
																end;
															end;
														elseif ground then
															if not jumping then
																if ground.Name ~= "Slide" then
																	psound(vis.torso, "jump2");
																	rolling = true;
																	jumping = true;
																	cvt(v2(char.Velocity, 20));
																	djump = false;
																	botand = math.pi * 2;
																	wait(0.2);
																	sliding = false;
																	jumping = false;
																	wait(0.1);
																	rolling = false;
																elseif flying then
																	if not debounce then
																		debounce = true;
																		potand = potand + math.pi * 2 * fallvr;
																		wait(0.5);
																		debounce = false;
																	end;
																end;
															elseif flying then
																if not debounce then
																	debounce = true;
																	potand = potand + math.pi * 2 * fallvr;
																	wait(0.5);
																	debounce = false;
																end;
															end;
														elseif flying then
															if not debounce then
																debounce = true;
																potand = potand + math.pi * 2 * fallvr;
																wait(0.5);
																debounce = false;
															end;
														end;
													elseif ground then
														if not jumping then
															if ground.Name ~= "Slide" then
																psound(vis.torso, "jump2");
																rolling = true;
																jumping = true;
																cvt(v2(char.Velocity, 20));
																djump = false;
																botand = math.pi * 2;
																wait(0.2);
																sliding = false;
																jumping = false;
																wait(0.1);
																rolling = false;
															elseif flying then
																if not debounce then
																	debounce = true;
																	potand = potand + math.pi * 2 * fallvr;
																	wait(0.5);
																	debounce = false;
																end;
															end;
														elseif flying then
															if not debounce then
																debounce = true;
																potand = potand + math.pi * 2 * fallvr;
																wait(0.5);
																debounce = false;
															end;
														end;
													elseif flying then
														if not debounce then
															debounce = true;
															potand = potand + math.pi * 2 * fallvr;
															wait(0.5);
															debounce = false;
														end;
													end;
												elseif ground then
													if not jumping then
														if ground.Name ~= "Slide" then
															psound(vis.torso, "jump2");
															rolling = true;
															jumping = true;
															cvt(v2(char.Velocity, 20));
															djump = false;
															botand = math.pi * 2;
															wait(0.2);
															sliding = false;
															jumping = false;
															wait(0.1);
															rolling = false;
														elseif flying then
															if not debounce then
																debounce = true;
																potand = potand + math.pi * 2 * fallvr;
																wait(0.5);
																debounce = false;
															end;
														end;
													elseif flying then
														if not debounce then
															debounce = true;
															potand = potand + math.pi * 2 * fallvr;
															wait(0.5);
															debounce = false;
														end;
													end;
												elseif flying then
													if not debounce then
														debounce = true;
														potand = potand + math.pi * 2 * fallvr;
														wait(0.5);
														debounce = false;
													end;
												end;
											elseif ground then
												if not jumping then
													if ground.Name ~= "Slide" then
														psound(vis.torso, "jump2");
														rolling = true;
														jumping = true;
														cvt(v2(char.Velocity, 20));
														djump = false;
														botand = math.pi * 2;
														wait(0.2);
														sliding = false;
														jumping = false;
														wait(0.1);
														rolling = false;
													elseif flying then
														if not debounce then
															debounce = true;
															potand = potand + math.pi * 2 * fallvr;
															wait(0.5);
															debounce = false;
														end;
													end;
												elseif flying then
													if not debounce then
														debounce = true;
														potand = potand + math.pi * 2 * fallvr;
														wait(0.5);
														debounce = false;
													end;
												end;
											elseif flying then
												if not debounce then
													debounce = true;
													potand = potand + math.pi * 2 * fallvr;
													wait(0.5);
													debounce = false;
												end;
											end;
										elseif hasflame then
											flameon = not flameon;
										elseif ledgegrab then
											if not debounce then
												psound(vis.torso, "jump2");
												debounce = true;
												jumping = true;
												wallrun = nil;
												ledgegrab = nil;
												cvt(Vector3.new(0, 30, 0) + point.rightVector * 10);
												rotand = rotand + 1;
												wait(0.2);
												cvt(Vector3.new(0, char.Velocity.Y, 0) - wallnorm * 10 - point.rightVector * 7);
												wait(0.2);
												djump = false;
												debounce = false;
												jumping = false;
											elseif wallrun then
												if not jumping then
													skatestat = { "Wall jump", skatestat[2] + 100, skatestat[3] + 1, false, skatestat[5] };
													psound(vis.torso, "jump2");
													jumping = true;
													cvt(v2(char.Velocity, 30) + wallnorm * 30);
													point = CFrame.new(Vector3.new(), -2 * point.lookVector:Dot(wallnorm) * wallnorm + point.lookVector);
													djump = true;
													wait(0.2);
													jumping = false;
												end;
											elseif swimming then
												return;
											elseif not sliding then
												if not pole then
													if not onrope then
														if not wallrun then
															if not ledgegrab then
																if not attack then
																	if not pound then
																		psound(vis.torso, "dive");
																		longjump = false;
																		pound = false;
																		rolling = false;
																		char.Anchored = false;
																		jumping = true;
																		sliding = true;
																		if hasfly then
																			if not djump then
																				djump = true;
																				flying = true;
																				flypitch = 0.5;
																				flyspeed = 2;
																				if ground then
																					v98 = 40;
																				else
																					v98 = 20;
																				end;
																				cvt(point.lookVector * 50 + Vector3.new(0, v98));
																				potand = math.pi * 2 * fallvr;
																			else
																				if ground then
																					v99 = 30;
																				else
																					v99 = 20;
																				end;
																				cvt(point.lookVector * 40 + Vector3.new(0, v99));
																			end;
																		else
																			if ground then
																				v99 = 30;
																			else
																				v99 = 20;
																			end;
																			cvt(point.lookVector * 40 + Vector3.new(0, v99));
																		end;
																		wait(0.3);
																		jumping = false;
																	elseif ground then
																		if not jumping then
																			if ground.Name ~= "Slide" then
																				psound(vis.torso, "jump2");
																				rolling = true;
																				jumping = true;
																				cvt(v2(char.Velocity, 20));
																				djump = false;
																				botand = math.pi * 2;
																				wait(0.2);
																				sliding = false;
																				jumping = false;
																				wait(0.1);
																				rolling = false;
																			elseif flying then
																				if not debounce then
																					debounce = true;
																					potand = potand + math.pi * 2 * fallvr;
																					wait(0.5);
																					debounce = false;
																				end;
																			end;
																		elseif flying then
																			if not debounce then
																				debounce = true;
																				potand = potand + math.pi * 2 * fallvr;
																				wait(0.5);
																				debounce = false;
																			end;
																		end;
																	elseif flying then
																		if not debounce then
																			debounce = true;
																			potand = potand + math.pi * 2 * fallvr;
																			wait(0.5);
																			debounce = false;
																		end;
																	end;
																elseif ground then
																	if not jumping then
																		if ground.Name ~= "Slide" then
																			psound(vis.torso, "jump2");
																			rolling = true;
																			jumping = true;
																			cvt(v2(char.Velocity, 20));
																			djump = false;
																			botand = math.pi * 2;
																			wait(0.2);
																			sliding = false;
																			jumping = false;
																			wait(0.1);
																			rolling = false;
																		elseif flying then
																			if not debounce then
																				debounce = true;
																				potand = potand + math.pi * 2 * fallvr;
																				wait(0.5);
																				debounce = false;
																			end;
																		end;
																	elseif flying then
																		if not debounce then
																			debounce = true;
																			potand = potand + math.pi * 2 * fallvr;
																			wait(0.5);
																			debounce = false;
																		end;
																	end;
																elseif flying then
																	if not debounce then
																		debounce = true;
																		potand = potand + math.pi * 2 * fallvr;
																		wait(0.5);
																		debounce = false;
																	end;
																end;
															elseif ground then
																if not jumping then
																	if ground.Name ~= "Slide" then
																		psound(vis.torso, "jump2");
																		rolling = true;
																		jumping = true;
																		cvt(v2(char.Velocity, 20));
																		djump = false;
																		botand = math.pi * 2;
																		wait(0.2);
																		sliding = false;
																		jumping = false;
																		wait(0.1);
																		rolling = false;
																	elseif flying then
																		if not debounce then
																			debounce = true;
																			potand = potand + math.pi * 2 * fallvr;
																			wait(0.5);
																			debounce = false;
																		end;
																	end;
																elseif flying then
																	if not debounce then
																		debounce = true;
																		potand = potand + math.pi * 2 * fallvr;
																		wait(0.5);
																		debounce = false;
																	end;
																end;
															elseif flying then
																if not debounce then
																	debounce = true;
																	potand = potand + math.pi * 2 * fallvr;
																	wait(0.5);
																	debounce = false;
																end;
															end;
														elseif ground then
															if not jumping then
																if ground.Name ~= "Slide" then
																	psound(vis.torso, "jump2");
																	rolling = true;
																	jumping = true;
																	cvt(v2(char.Velocity, 20));
																	djump = false;
																	botand = math.pi * 2;
																	wait(0.2);
																	sliding = false;
																	jumping = false;
																	wait(0.1);
																	rolling = false;
																elseif flying then
																	if not debounce then
																		debounce = true;
																		potand = potand + math.pi * 2 * fallvr;
																		wait(0.5);
																		debounce = false;
																	end;
																end;
															elseif flying then
																if not debounce then
																	debounce = true;
																	potand = potand + math.pi * 2 * fallvr;
																	wait(0.5);
																	debounce = false;
																end;
															end;
														elseif flying then
															if not debounce then
																debounce = true;
																potand = potand + math.pi * 2 * fallvr;
																wait(0.5);
																debounce = false;
															end;
														end;
													elseif ground then
														if not jumping then
															if ground.Name ~= "Slide" then
																psound(vis.torso, "jump2");
																rolling = true;
																jumping = true;
																cvt(v2(char.Velocity, 20));
																djump = false;
																botand = math.pi * 2;
																wait(0.2);
																sliding = false;
																jumping = false;
																wait(0.1);
																rolling = false;
															elseif flying then
																if not debounce then
																	debounce = true;
																	potand = potand + math.pi * 2 * fallvr;
																	wait(0.5);
																	debounce = false;
																end;
															end;
														elseif flying then
															if not debounce then
																debounce = true;
																potand = potand + math.pi * 2 * fallvr;
																wait(0.5);
																debounce = false;
															end;
														end;
													elseif flying then
														if not debounce then
															debounce = true;
															potand = potand + math.pi * 2 * fallvr;
															wait(0.5);
															debounce = false;
														end;
													end;
												elseif ground then
													if not jumping then
														if ground.Name ~= "Slide" then
															psound(vis.torso, "jump2");
															rolling = true;
															jumping = true;
															cvt(v2(char.Velocity, 20));
															djump = false;
															botand = math.pi * 2;
															wait(0.2);
															sliding = false;
															jumping = false;
															wait(0.1);
															rolling = false;
														elseif flying then
															if not debounce then
																debounce = true;
																potand = potand + math.pi * 2 * fallvr;
																wait(0.5);
																debounce = false;
															end;
														end;
													elseif flying then
														if not debounce then
															debounce = true;
															potand = potand + math.pi * 2 * fallvr;
															wait(0.5);
															debounce = false;
														end;
													end;
												elseif flying then
													if not debounce then
														debounce = true;
														potand = potand + math.pi * 2 * fallvr;
														wait(0.5);
														debounce = false;
													end;
												end;
											elseif ground then
												if not jumping then
													if ground.Name ~= "Slide" then
														psound(vis.torso, "jump2");
														rolling = true;
														jumping = true;
														cvt(v2(char.Velocity, 20));
														djump = false;
														botand = math.pi * 2;
														wait(0.2);
														sliding = false;
														jumping = false;
														wait(0.1);
														rolling = false;
													elseif flying then
														if not debounce then
															debounce = true;
															potand = potand + math.pi * 2 * fallvr;
															wait(0.5);
															debounce = false;
														end;
													end;
												elseif flying then
													if not debounce then
														debounce = true;
														potand = potand + math.pi * 2 * fallvr;
														wait(0.5);
														debounce = false;
													end;
												end;
											elseif flying then
												if not debounce then
													debounce = true;
													potand = potand + math.pi * 2 * fallvr;
													wait(0.5);
													debounce = false;
												end;
											end;
										elseif wallrun then
											if not jumping then
												skatestat = { "Wall jump", skatestat[2] + 100, skatestat[3] + 1, false, skatestat[5] };
												psound(vis.torso, "jump2");
												jumping = true;
												cvt(v2(char.Velocity, 30) + wallnorm * 30);
												point = CFrame.new(Vector3.new(), -2 * point.lookVector:Dot(wallnorm) * wallnorm + point.lookVector);
												djump = true;
												wait(0.2);
												jumping = false;
											end;
										elseif swimming then
											return;
										elseif not sliding then
											if not pole then
												if not onrope then
													if not wallrun then
														if not ledgegrab then
															if not attack then
																if not pound then
																	psound(vis.torso, "dive");
																	longjump = false;
																	pound = false;
																	rolling = false;
																	char.Anchored = false;
																	jumping = true;
																	sliding = true;
																	if hasfly then
																		if not djump then
																			djump = true;
																			flying = true;
																			flypitch = 0.5;
																			flyspeed = 2;
																			if ground then
																				v98 = 40;
																			else
																				v98 = 20;
																			end;
																			cvt(point.lookVector * 50 + Vector3.new(0, v98));
																			potand = math.pi * 2 * fallvr;
																		else
																			if ground then
																				v99 = 30;
																			else
																				v99 = 20;
																			end;
																			cvt(point.lookVector * 40 + Vector3.new(0, v99));
																		end;
																	else
																		if ground then
																			v99 = 30;
																		else
																			v99 = 20;
																		end;
																		cvt(point.lookVector * 40 + Vector3.new(0, v99));
																	end;
																	wait(0.3);
																	jumping = false;
																elseif ground then
																	if not jumping then
																		if ground.Name ~= "Slide" then
																			psound(vis.torso, "jump2");
																			rolling = true;
																			jumping = true;
																			cvt(v2(char.Velocity, 20));
																			djump = false;
																			botand = math.pi * 2;
																			wait(0.2);
																			sliding = false;
																			jumping = false;
																			wait(0.1);
																			rolling = false;
																		elseif flying then
																			if not debounce then
																				debounce = true;
																				potand = potand + math.pi * 2 * fallvr;
																				wait(0.5);
																				debounce = false;
																			end;
																		end;
																	elseif flying then
																		if not debounce then
																			debounce = true;
																			potand = potand + math.pi * 2 * fallvr;
																			wait(0.5);
																			debounce = false;
																		end;
																	end;
																elseif flying then
																	if not debounce then
																		debounce = true;
																		potand = potand + math.pi * 2 * fallvr;
																		wait(0.5);
																		debounce = false;
																	end;
																end;
															elseif ground then
																if not jumping then
																	if ground.Name ~= "Slide" then
																		psound(vis.torso, "jump2");
																		rolling = true;
																		jumping = true;
																		cvt(v2(char.Velocity, 20));
																		djump = false;
																		botand = math.pi * 2;
																		wait(0.2);
																		sliding = false;
																		jumping = false;
																		wait(0.1);
																		rolling = false;
																	elseif flying then
																		if not debounce then
																			debounce = true;
																			potand = potand + math.pi * 2 * fallvr;
																			wait(0.5);
																			debounce = false;
																		end;
																	end;
																elseif flying then
																	if not debounce then
																		debounce = true;
																		potand = potand + math.pi * 2 * fallvr;
																		wait(0.5);
																		debounce = false;
																	end;
																end;
															elseif flying then
																if not debounce then
																	debounce = true;
																	potand = potand + math.pi * 2 * fallvr;
																	wait(0.5);
																	debounce = false;
																end;
															end;
														elseif ground then
															if not jumping then
																if ground.Name ~= "Slide" then
																	psound(vis.torso, "jump2");
																	rolling = true;
																	jumping = true;
																	cvt(v2(char.Velocity, 20));
																	djump = false;
																	botand = math.pi * 2;
																	wait(0.2);
																	sliding = false;
																	jumping = false;
																	wait(0.1);
																	rolling = false;
																elseif flying then
																	if not debounce then
																		debounce = true;
																		potand = potand + math.pi * 2 * fallvr;
																		wait(0.5);
																		debounce = false;
																	end;
																end;
															elseif flying then
																if not debounce then
																	debounce = true;
																	potand = potand + math.pi * 2 * fallvr;
																	wait(0.5);
																	debounce = false;
																end;
															end;
														elseif flying then
															if not debounce then
																debounce = true;
																potand = potand + math.pi * 2 * fallvr;
																wait(0.5);
																debounce = false;
															end;
														end;
													elseif ground then
														if not jumping then
															if ground.Name ~= "Slide" then
																psound(vis.torso, "jump2");
																rolling = true;
																jumping = true;
																cvt(v2(char.Velocity, 20));
																djump = false;
																botand = math.pi * 2;
																wait(0.2);
																sliding = false;
																jumping = false;
																wait(0.1);
																rolling = false;
															elseif flying then
																if not debounce then
																	debounce = true;
																	potand = potand + math.pi * 2 * fallvr;
																	wait(0.5);
																	debounce = false;
																end;
															end;
														elseif flying then
															if not debounce then
																debounce = true;
																potand = potand + math.pi * 2 * fallvr;
																wait(0.5);
																debounce = false;
															end;
														end;
													elseif flying then
														if not debounce then
															debounce = true;
															potand = potand + math.pi * 2 * fallvr;
															wait(0.5);
															debounce = false;
														end;
													end;
												elseif ground then
													if not jumping then
														if ground.Name ~= "Slide" then
															psound(vis.torso, "jump2");
															rolling = true;
															jumping = true;
															cvt(v2(char.Velocity, 20));
															djump = false;
															botand = math.pi * 2;
															wait(0.2);
															sliding = false;
															jumping = false;
															wait(0.1);
															rolling = false;
														elseif flying then
															if not debounce then
																debounce = true;
																potand = potand + math.pi * 2 * fallvr;
																wait(0.5);
																debounce = false;
															end;
														end;
													elseif flying then
														if not debounce then
															debounce = true;
															potand = potand + math.pi * 2 * fallvr;
															wait(0.5);
															debounce = false;
														end;
													end;
												elseif flying then
													if not debounce then
														debounce = true;
														potand = potand + math.pi * 2 * fallvr;
														wait(0.5);
														debounce = false;
													end;
												end;
											elseif ground then
												if not jumping then
													if ground.Name ~= "Slide" then
														psound(vis.torso, "jump2");
														rolling = true;
														jumping = true;
														cvt(v2(char.Velocity, 20));
														djump = false;
														botand = math.pi * 2;
														wait(0.2);
														sliding = false;
														jumping = false;
														wait(0.1);
														rolling = false;
													elseif flying then
														if not debounce then
															debounce = true;
															potand = potand + math.pi * 2 * fallvr;
															wait(0.5);
															debounce = false;
														end;
													end;
												elseif flying then
													if not debounce then
														debounce = true;
														potand = potand + math.pi * 2 * fallvr;
														wait(0.5);
														debounce = false;
													end;
												end;
											elseif flying then
												if not debounce then
													debounce = true;
													potand = potand + math.pi * 2 * fallvr;
													wait(0.5);
													debounce = false;
												end;
											end;
										elseif ground then
											if not jumping then
												if ground.Name ~= "Slide" then
													psound(vis.torso, "jump2");
													rolling = true;
													jumping = true;
													cvt(v2(char.Velocity, 20));
													djump = false;
													botand = math.pi * 2;
													wait(0.2);
													sliding = false;
													jumping = false;
													wait(0.1);
													rolling = false;
												elseif flying then
													if not debounce then
														debounce = true;
														potand = potand + math.pi * 2 * fallvr;
														wait(0.5);
														debounce = false;
													end;
												end;
											elseif flying then
												if not debounce then
													debounce = true;
													potand = potand + math.pi * 2 * fallvr;
													wait(0.5);
													debounce = false;
												end;
											end;
										elseif flying then
											if not debounce then
												debounce = true;
												potand = potand + math.pi * 2 * fallvr;
												wait(0.5);
												debounce = false;
											end;
										end;
									elseif hasflame then
										flameon = not flameon;
									elseif ledgegrab then
										if not debounce then
											psound(vis.torso, "jump2");
											debounce = true;
											jumping = true;
											wallrun = nil;
											ledgegrab = nil;
											cvt(Vector3.new(0, 30, 0) + point.rightVector * 10);
											rotand = rotand + 1;
											wait(0.2);
											cvt(Vector3.new(0, char.Velocity.Y, 0) - wallnorm * 10 - point.rightVector * 7);
											wait(0.2);
											djump = false;
											debounce = false;
											jumping = false;
										elseif wallrun then
											if not jumping then
												skatestat = { "Wall jump", skatestat[2] + 100, skatestat[3] + 1, false, skatestat[5] };
												psound(vis.torso, "jump2");
												jumping = true;
												cvt(v2(char.Velocity, 30) + wallnorm * 30);
												point = CFrame.new(Vector3.new(), -2 * point.lookVector:Dot(wallnorm) * wallnorm + point.lookVector);
												djump = true;
												wait(0.2);
												jumping = false;
											end;
										elseif swimming then
											return;
										elseif not sliding then
											if not pole then
												if not onrope then
													if not wallrun then
														if not ledgegrab then
															if not attack then
																if not pound then
																	psound(vis.torso, "dive");
																	longjump = false;
																	pound = false;
																	rolling = false;
																	char.Anchored = false;
																	jumping = true;
																	sliding = true;
																	if hasfly then
																		if not djump then
																			djump = true;
																			flying = true;
																			flypitch = 0.5;
																			flyspeed = 2;
																			if ground then
																				v98 = 40;
																			else
																				v98 = 20;
																			end;
																			cvt(point.lookVector * 50 + Vector3.new(0, v98));
																			potand = math.pi * 2 * fallvr;
																		else
																			if ground then
																				v99 = 30;
																			else
																				v99 = 20;
																			end;
																			cvt(point.lookVector * 40 + Vector3.new(0, v99));
																		end;
																	else
																		if ground then
																			v99 = 30;
																		else
																			v99 = 20;
																		end;
																		cvt(point.lookVector * 40 + Vector3.new(0, v99));
																	end;
																	wait(0.3);
																	jumping = false;
																elseif ground then
																	if not jumping then
																		if ground.Name ~= "Slide" then
																			psound(vis.torso, "jump2");
																			rolling = true;
																			jumping = true;
																			cvt(v2(char.Velocity, 20));
																			djump = false;
																			botand = math.pi * 2;
																			wait(0.2);
																			sliding = false;
																			jumping = false;
																			wait(0.1);
																			rolling = false;
																		elseif flying then
																			if not debounce then
																				debounce = true;
																				potand = potand + math.pi * 2 * fallvr;
																				wait(0.5);
																				debounce = false;
																			end;
																		end;
																	elseif flying then
																		if not debounce then
																			debounce = true;
																			potand = potand + math.pi * 2 * fallvr;
																			wait(0.5);
																			debounce = false;
																		end;
																	end;
																elseif flying then
																	if not debounce then
																		debounce = true;
																		potand = potand + math.pi * 2 * fallvr;
																		wait(0.5);
																		debounce = false;
																	end;
																end;
															elseif ground then
																if not jumping then
																	if ground.Name ~= "Slide" then
																		psound(vis.torso, "jump2");
																		rolling = true;
																		jumping = true;
																		cvt(v2(char.Velocity, 20));
																		djump = false;
																		botand = math.pi * 2;
																		wait(0.2);
																		sliding = false;
																		jumping = false;
																		wait(0.1);
																		rolling = false;
																	elseif flying then
																		if not debounce then
																			debounce = true;
																			potand = potand + math.pi * 2 * fallvr;
																			wait(0.5);
																			debounce = false;
																		end;
																	end;
																elseif flying then
																	if not debounce then
																		debounce = true;
																		potand = potand + math.pi * 2 * fallvr;
																		wait(0.5);
																		debounce = false;
																	end;
																end;
															elseif flying then
																if not debounce then
																	debounce = true;
																	potand = potand + math.pi * 2 * fallvr;
																	wait(0.5);
																	debounce = false;
																end;
															end;
														elseif ground then
															if not jumping then
																if ground.Name ~= "Slide" then
																	psound(vis.torso, "jump2");
																	rolling = true;
																	jumping = true;
																	cvt(v2(char.Velocity, 20));
																	djump = false;
																	botand = math.pi * 2;
																	wait(0.2);
																	sliding = false;
																	jumping = false;
																	wait(0.1);
																	rolling = false;
																elseif flying then
																	if not debounce then
																		debounce = true;
																		potand = potand + math.pi * 2 * fallvr;
																		wait(0.5);
																		debounce = false;
																	end;
																end;
															elseif flying then
																if not debounce then
																	debounce = true;
																	potand = potand + math.pi * 2 * fallvr;
																	wait(0.5);
																	debounce = false;
																end;
															end;
														elseif flying then
															if not debounce then
																debounce = true;
																potand = potand + math.pi * 2 * fallvr;
																wait(0.5);
																debounce = false;
															end;
														end;
													elseif ground then
														if not jumping then
															if ground.Name ~= "Slide" then
																psound(vis.torso, "jump2");
																rolling = true;
																jumping = true;
																cvt(v2(char.Velocity, 20));
																djump = false;
																botand = math.pi * 2;
																wait(0.2);
																sliding = false;
																jumping = false;
																wait(0.1);
																rolling = false;
															elseif flying then
																if not debounce then
																	debounce = true;
																	potand = potand + math.pi * 2 * fallvr;
																	wait(0.5);
																	debounce = false;
																end;
															end;
														elseif flying then
															if not debounce then
																debounce = true;
																potand = potand + math.pi * 2 * fallvr;
																wait(0.5);
																debounce = false;
															end;
														end;
													elseif flying then
														if not debounce then
															debounce = true;
															potand = potand + math.pi * 2 * fallvr;
															wait(0.5);
															debounce = false;
														end;
													end;
												elseif ground then
													if not jumping then
														if ground.Name ~= "Slide" then
															psound(vis.torso, "jump2");
															rolling = true;
															jumping = true;
															cvt(v2(char.Velocity, 20));
															djump = false;
															botand = math.pi * 2;
															wait(0.2);
															sliding = false;
															jumping = false;
															wait(0.1);
															rolling = false;
														elseif flying then
															if not debounce then
																debounce = true;
																potand = potand + math.pi * 2 * fallvr;
																wait(0.5);
																debounce = false;
															end;
														end;
													elseif flying then
														if not debounce then
															debounce = true;
															potand = potand + math.pi * 2 * fallvr;
															wait(0.5);
															debounce = false;
														end;
													end;
												elseif flying then
													if not debounce then
														debounce = true;
														potand = potand + math.pi * 2 * fallvr;
														wait(0.5);
														debounce = false;
													end;
												end;
											elseif ground then
												if not jumping then
													if ground.Name ~= "Slide" then
														psound(vis.torso, "jump2");
														rolling = true;
														jumping = true;
														cvt(v2(char.Velocity, 20));
														djump = false;
														botand = math.pi * 2;
														wait(0.2);
														sliding = false;
														jumping = false;
														wait(0.1);
														rolling = false;
													elseif flying then
														if not debounce then
															debounce = true;
															potand = potand + math.pi * 2 * fallvr;
															wait(0.5);
															debounce = false;
														end;
													end;
												elseif flying then
													if not debounce then
														debounce = true;
														potand = potand + math.pi * 2 * fallvr;
														wait(0.5);
														debounce = false;
													end;
												end;
											elseif flying then
												if not debounce then
													debounce = true;
													potand = potand + math.pi * 2 * fallvr;
													wait(0.5);
													debounce = false;
												end;
											end;
										elseif ground then
											if not jumping then
												if ground.Name ~= "Slide" then
													psound(vis.torso, "jump2");
													rolling = true;
													jumping = true;
													cvt(v2(char.Velocity, 20));
													djump = false;
													botand = math.pi * 2;
													wait(0.2);
													sliding = false;
													jumping = false;
													wait(0.1);
													rolling = false;
												elseif flying then
													if not debounce then
														debounce = true;
														potand = potand + math.pi * 2 * fallvr;
														wait(0.5);
														debounce = false;
													end;
												end;
											elseif flying then
												if not debounce then
													debounce = true;
													potand = potand + math.pi * 2 * fallvr;
													wait(0.5);
													debounce = false;
												end;
											end;
										elseif flying then
											if not debounce then
												debounce = true;
												potand = potand + math.pi * 2 * fallvr;
												wait(0.5);
												debounce = false;
											end;
										end;
									elseif wallrun then
										if not jumping then
											skatestat = { "Wall jump", skatestat[2] + 100, skatestat[3] + 1, false, skatestat[5] };
											psound(vis.torso, "jump2");
											jumping = true;
											cvt(v2(char.Velocity, 30) + wallnorm * 30);
											point = CFrame.new(Vector3.new(), -2 * point.lookVector:Dot(wallnorm) * wallnorm + point.lookVector);
											djump = true;
											wait(0.2);
											jumping = false;
										end;
									elseif swimming then
										return;
									elseif not sliding then
										if not pole then
											if not onrope then
												if not wallrun then
													if not ledgegrab then
														if not attack then
															if not pound then
																psound(vis.torso, "dive");
																longjump = false;
																pound = false;
																rolling = false;
																char.Anchored = false;
																jumping = true;
																sliding = true;
																if hasfly then
																	if not djump then
																		djump = true;
																		flying = true;
																		flypitch = 0.5;
																		flyspeed = 2;
																		if ground then
																			v98 = 40;
																		else
																			v98 = 20;
																		end;
																		cvt(point.lookVector * 50 + Vector3.new(0, v98));
																		potand = math.pi * 2 * fallvr;
																	else
																		if ground then
																			v99 = 30;
																		else
																			v99 = 20;
																		end;
																		cvt(point.lookVector * 40 + Vector3.new(0, v99));
																	end;
																else
																	if ground then
																		v99 = 30;
																	else
																		v99 = 20;
																	end;
																	cvt(point.lookVector * 40 + Vector3.new(0, v99));
																end;
																wait(0.3);
																jumping = false;
															elseif ground then
																if not jumping then
																	if ground.Name ~= "Slide" then
																		psound(vis.torso, "jump2");
																		rolling = true;
																		jumping = true;
																		cvt(v2(char.Velocity, 20));
																		djump = false;
																		botand = math.pi * 2;
																		wait(0.2);
																		sliding = false;
																		jumping = false;
																		wait(0.1);
																		rolling = false;
																	elseif flying then
																		if not debounce then
																			debounce = true;
																			potand = potand + math.pi * 2 * fallvr;
																			wait(0.5);
																			debounce = false;
																		end;
																	end;
																elseif flying then
																	if not debounce then
																		debounce = true;
																		potand = potand + math.pi * 2 * fallvr;
																		wait(0.5);
																		debounce = false;
																	end;
																end;
															elseif flying then
																if not debounce then
																	debounce = true;
																	potand = potand + math.pi * 2 * fallvr;
																	wait(0.5);
																	debounce = false;
																end;
															end;
														elseif ground then
															if not jumping then
																if ground.Name ~= "Slide" then
																	psound(vis.torso, "jump2");
																	rolling = true;
																	jumping = true;
																	cvt(v2(char.Velocity, 20));
																	djump = false;
																	botand = math.pi * 2;
																	wait(0.2);
																	sliding = false;
																	jumping = false;
																	wait(0.1);
																	rolling = false;
																elseif flying then
																	if not debounce then
																		debounce = true;
																		potand = potand + math.pi * 2 * fallvr;
																		wait(0.5);
																		debounce = false;
																	end;
																end;
															elseif flying then
																if not debounce then
																	debounce = true;
																	potand = potand + math.pi * 2 * fallvr;
																	wait(0.5);
																	debounce = false;
																end;
															end;
														elseif flying then
															if not debounce then
																debounce = true;
																potand = potand + math.pi * 2 * fallvr;
																wait(0.5);
																debounce = false;
															end;
														end;
													elseif ground then
														if not jumping then
															if ground.Name ~= "Slide" then
																psound(vis.torso, "jump2");
																rolling = true;
																jumping = true;
																cvt(v2(char.Velocity, 20));
																djump = false;
																botand = math.pi * 2;
																wait(0.2);
																sliding = false;
																jumping = false;
																wait(0.1);
																rolling = false;
															elseif flying then
																if not debounce then
																	debounce = true;
																	potand = potand + math.pi * 2 * fallvr;
																	wait(0.5);
																	debounce = false;
																end;
															end;
														elseif flying then
															if not debounce then
																debounce = true;
																potand = potand + math.pi * 2 * fallvr;
																wait(0.5);
																debounce = false;
															end;
														end;
													elseif flying then
														if not debounce then
															debounce = true;
															potand = potand + math.pi * 2 * fallvr;
															wait(0.5);
															debounce = false;
														end;
													end;
												elseif ground then
													if not jumping then
														if ground.Name ~= "Slide" then
															psound(vis.torso, "jump2");
															rolling = true;
															jumping = true;
															cvt(v2(char.Velocity, 20));
															djump = false;
															botand = math.pi * 2;
															wait(0.2);
															sliding = false;
															jumping = false;
															wait(0.1);
															rolling = false;
														elseif flying then
															if not debounce then
																debounce = true;
																potand = potand + math.pi * 2 * fallvr;
																wait(0.5);
																debounce = false;
															end;
														end;
													elseif flying then
														if not debounce then
															debounce = true;
															potand = potand + math.pi * 2 * fallvr;
															wait(0.5);
															debounce = false;
														end;
													end;
												elseif flying then
													if not debounce then
														debounce = true;
														potand = potand + math.pi * 2 * fallvr;
														wait(0.5);
														debounce = false;
													end;
												end;
											elseif ground then
												if not jumping then
													if ground.Name ~= "Slide" then
														psound(vis.torso, "jump2");
														rolling = true;
														jumping = true;
														cvt(v2(char.Velocity, 20));
														djump = false;
														botand = math.pi * 2;
														wait(0.2);
														sliding = false;
														jumping = false;
														wait(0.1);
														rolling = false;
													elseif flying then
														if not debounce then
															debounce = true;
															potand = potand + math.pi * 2 * fallvr;
															wait(0.5);
															debounce = false;
														end;
													end;
												elseif flying then
													if not debounce then
														debounce = true;
														potand = potand + math.pi * 2 * fallvr;
														wait(0.5);
														debounce = false;
													end;
												end;
											elseif flying then
												if not debounce then
													debounce = true;
													potand = potand + math.pi * 2 * fallvr;
													wait(0.5);
													debounce = false;
												end;
											end;
										elseif ground then
											if not jumping then
												if ground.Name ~= "Slide" then
													psound(vis.torso, "jump2");
													rolling = true;
													jumping = true;
													cvt(v2(char.Velocity, 20));
													djump = false;
													botand = math.pi * 2;
													wait(0.2);
													sliding = false;
													jumping = false;
													wait(0.1);
													rolling = false;
												elseif flying then
													if not debounce then
														debounce = true;
														potand = potand + math.pi * 2 * fallvr;
														wait(0.5);
														debounce = false;
													end;
												end;
											elseif flying then
												if not debounce then
													debounce = true;
													potand = potand + math.pi * 2 * fallvr;
													wait(0.5);
													debounce = false;
												end;
											end;
										elseif flying then
											if not debounce then
												debounce = true;
												potand = potand + math.pi * 2 * fallvr;
												wait(0.5);
												debounce = false;
											end;
										end;
									elseif ground then
										if not jumping then
											if ground.Name ~= "Slide" then
												psound(vis.torso, "jump2");
												rolling = true;
												jumping = true;
												cvt(v2(char.Velocity, 20));
												djump = false;
												botand = math.pi * 2;
												wait(0.2);
												sliding = false;
												jumping = false;
												wait(0.1);
												rolling = false;
											elseif flying then
												if not debounce then
													debounce = true;
													potand = potand + math.pi * 2 * fallvr;
													wait(0.5);
													debounce = false;
												end;
											end;
										elseif flying then
											if not debounce then
												debounce = true;
												potand = potand + math.pi * 2 * fallvr;
												wait(0.5);
												debounce = false;
											end;
										end;
									elseif flying then
										if not debounce then
											debounce = true;
											potand = potand + math.pi * 2 * fallvr;
											wait(0.5);
											debounce = false;
										end;
									end;
								elseif hasflame then
									flameon = not flameon;
								elseif ledgegrab then
									if not debounce then
										psound(vis.torso, "jump2");
										debounce = true;
										jumping = true;
										wallrun = nil;
										ledgegrab = nil;
										cvt(Vector3.new(0, 30, 0) + point.rightVector * 10);
										rotand = rotand + 1;
										wait(0.2);
										cvt(Vector3.new(0, char.Velocity.Y, 0) - wallnorm * 10 - point.rightVector * 7);
										wait(0.2);
										djump = false;
										debounce = false;
										jumping = false;
									elseif wallrun then
										if not jumping then
											skatestat = { "Wall jump", skatestat[2] + 100, skatestat[3] + 1, false, skatestat[5] };
											psound(vis.torso, "jump2");
											jumping = true;
											cvt(v2(char.Velocity, 30) + wallnorm * 30);
											point = CFrame.new(Vector3.new(), -2 * point.lookVector:Dot(wallnorm) * wallnorm + point.lookVector);
											djump = true;
											wait(0.2);
											jumping = false;
										end;
									elseif swimming then
										return;
									elseif not sliding then
										if not pole then
											if not onrope then
												if not wallrun then
													if not ledgegrab then
														if not attack then
															if not pound then
																psound(vis.torso, "dive");
																longjump = false;
																pound = false;
																rolling = false;
																char.Anchored = false;
																jumping = true;
																sliding = true;
																if hasfly then
																	if not djump then
																		djump = true;
																		flying = true;
																		flypitch = 0.5;
																		flyspeed = 2;
																		if ground then
																			v98 = 40;
																		else
																			v98 = 20;
																		end;
																		cvt(point.lookVector * 50 + Vector3.new(0, v98));
																		potand = math.pi * 2 * fallvr;
																	else
																		if ground then
																			v99 = 30;
																		else
																			v99 = 20;
																		end;
																		cvt(point.lookVector * 40 + Vector3.new(0, v99));
																	end;
																else
																	if ground then
																		v99 = 30;
																	else
																		v99 = 20;
																	end;
																	cvt(point.lookVector * 40 + Vector3.new(0, v99));
																end;
																wait(0.3);
																jumping = false;
															elseif ground then
																if not jumping then
																	if ground.Name ~= "Slide" then
																		psound(vis.torso, "jump2");
																		rolling = true;
																		jumping = true;
																		cvt(v2(char.Velocity, 20));
																		djump = false;
																		botand = math.pi * 2;
																		wait(0.2);
																		sliding = false;
																		jumping = false;
																		wait(0.1);
																		rolling = false;
																	elseif flying then
																		if not debounce then
																			debounce = true;
																			potand = potand + math.pi * 2 * fallvr;
																			wait(0.5);
																			debounce = false;
																		end;
																	end;
																elseif flying then
																	if not debounce then
																		debounce = true;
																		potand = potand + math.pi * 2 * fallvr;
																		wait(0.5);
																		debounce = false;
																	end;
																end;
															elseif flying then
																if not debounce then
																	debounce = true;
																	potand = potand + math.pi * 2 * fallvr;
																	wait(0.5);
																	debounce = false;
																end;
															end;
														elseif ground then
															if not jumping then
																if ground.Name ~= "Slide" then
																	psound(vis.torso, "jump2");
																	rolling = true;
																	jumping = true;
																	cvt(v2(char.Velocity, 20));
																	djump = false;
																	botand = math.pi * 2;
																	wait(0.2);
																	sliding = false;
																	jumping = false;
																	wait(0.1);
																	rolling = false;
																elseif flying then
																	if not debounce then
																		debounce = true;
																		potand = potand + math.pi * 2 * fallvr;
																		wait(0.5);
																		debounce = false;
																	end;
																end;
															elseif flying then
																if not debounce then
																	debounce = true;
																	potand = potand + math.pi * 2 * fallvr;
																	wait(0.5);
																	debounce = false;
																end;
															end;
														elseif flying then
															if not debounce then
																debounce = true;
																potand = potand + math.pi * 2 * fallvr;
																wait(0.5);
																debounce = false;
															end;
														end;
													elseif ground then
														if not jumping then
															if ground.Name ~= "Slide" then
																psound(vis.torso, "jump2");
																rolling = true;
																jumping = true;
																cvt(v2(char.Velocity, 20));
																djump = false;
																botand = math.pi * 2;
																wait(0.2);
																sliding = false;
																jumping = false;
																wait(0.1);
																rolling = false;
															elseif flying then
																if not debounce then
																	debounce = true;
																	potand = potand + math.pi * 2 * fallvr;
																	wait(0.5);
																	debounce = false;
																end;
															end;
														elseif flying then
															if not debounce then
																debounce = true;
																potand = potand + math.pi * 2 * fallvr;
																wait(0.5);
																debounce = false;
															end;
														end;
													elseif flying then
														if not debounce then
															debounce = true;
															potand = potand + math.pi * 2 * fallvr;
															wait(0.5);
															debounce = false;
														end;
													end;
												elseif ground then
													if not jumping then
														if ground.Name ~= "Slide" then
															psound(vis.torso, "jump2");
															rolling = true;
															jumping = true;
															cvt(v2(char.Velocity, 20));
															djump = false;
															botand = math.pi * 2;
															wait(0.2);
															sliding = false;
															jumping = false;
															wait(0.1);
															rolling = false;
														elseif flying then
															if not debounce then
																debounce = true;
																potand = potand + math.pi * 2 * fallvr;
																wait(0.5);
																debounce = false;
															end;
														end;
													elseif flying then
														if not debounce then
															debounce = true;
															potand = potand + math.pi * 2 * fallvr;
															wait(0.5);
															debounce = false;
														end;
													end;
												elseif flying then
													if not debounce then
														debounce = true;
														potand = potand + math.pi * 2 * fallvr;
														wait(0.5);
														debounce = false;
													end;
												end;
											elseif ground then
												if not jumping then
													if ground.Name ~= "Slide" then
														psound(vis.torso, "jump2");
														rolling = true;
														jumping = true;
														cvt(v2(char.Velocity, 20));
														djump = false;
														botand = math.pi * 2;
														wait(0.2);
														sliding = false;
														jumping = false;
														wait(0.1);
														rolling = false;
													elseif flying then
														if not debounce then
															debounce = true;
															potand = potand + math.pi * 2 * fallvr;
															wait(0.5);
															debounce = false;
														end;
													end;
												elseif flying then
													if not debounce then
														debounce = true;
														potand = potand + math.pi * 2 * fallvr;
														wait(0.5);
														debounce = false;
													end;
												end;
											elseif flying then
												if not debounce then
													debounce = true;
													potand = potand + math.pi * 2 * fallvr;
													wait(0.5);
													debounce = false;
												end;
											end;
										elseif ground then
											if not jumping then
												if ground.Name ~= "Slide" then
													psound(vis.torso, "jump2");
													rolling = true;
													jumping = true;
													cvt(v2(char.Velocity, 20));
													djump = false;
													botand = math.pi * 2;
													wait(0.2);
													sliding = false;
													jumping = false;
													wait(0.1);
													rolling = false;
												elseif flying then
													if not debounce then
														debounce = true;
														potand = potand + math.pi * 2 * fallvr;
														wait(0.5);
														debounce = false;
													end;
												end;
											elseif flying then
												if not debounce then
													debounce = true;
													potand = potand + math.pi * 2 * fallvr;
													wait(0.5);
													debounce = false;
												end;
											end;
										elseif flying then
											if not debounce then
												debounce = true;
												potand = potand + math.pi * 2 * fallvr;
												wait(0.5);
												debounce = false;
											end;
										end;
									elseif ground then
										if not jumping then
											if ground.Name ~= "Slide" then
												psound(vis.torso, "jump2");
												rolling = true;
												jumping = true;
												cvt(v2(char.Velocity, 20));
												djump = false;
												botand = math.pi * 2;
												wait(0.2);
												sliding = false;
												jumping = false;
												wait(0.1);
												rolling = false;
											elseif flying then
												if not debounce then
													debounce = true;
													potand = potand + math.pi * 2 * fallvr;
													wait(0.5);
													debounce = false;
												end;
											end;
										elseif flying then
											if not debounce then
												debounce = true;
												potand = potand + math.pi * 2 * fallvr;
												wait(0.5);
												debounce = false;
											end;
										end;
									elseif flying then
										if not debounce then
											debounce = true;
											potand = potand + math.pi * 2 * fallvr;
											wait(0.5);
											debounce = false;
										end;
									end;
								elseif wallrun then
									if not jumping then
										skatestat = { "Wall jump", skatestat[2] + 100, skatestat[3] + 1, false, skatestat[5] };
										psound(vis.torso, "jump2");
										jumping = true;
										cvt(v2(char.Velocity, 30) + wallnorm * 30);
										point = CFrame.new(Vector3.new(), -2 * point.lookVector:Dot(wallnorm) * wallnorm + point.lookVector);
										djump = true;
										wait(0.2);
										jumping = false;
									end;
								elseif swimming then
									return;
								elseif not sliding then
									if not pole then
										if not onrope then
											if not wallrun then
												if not ledgegrab then
													if not attack then
														if not pound then
															psound(vis.torso, "dive");
															longjump = false;
															pound = false;
															rolling = false;
															char.Anchored = false;
															jumping = true;
															sliding = true;
															if hasfly then
																if not djump then
																	djump = true;
																	flying = true;
																	flypitch = 0.5;
																	flyspeed = 2;
																	if ground then
																		v98 = 40;
																	else
																		v98 = 20;
																	end;
																	cvt(point.lookVector * 50 + Vector3.new(0, v98));
																	potand = math.pi * 2 * fallvr;
																else
																	if ground then
																		v99 = 30;
																	else
																		v99 = 20;
																	end;
																	cvt(point.lookVector * 40 + Vector3.new(0, v99));
																end;
															else
																if ground then
																	v99 = 30;
																else
																	v99 = 20;
																end;
																cvt(point.lookVector * 40 + Vector3.new(0, v99));
															end;
															wait(0.3);
															jumping = false;
														elseif ground then
															if not jumping then
																if ground.Name ~= "Slide" then
																	psound(vis.torso, "jump2");
																	rolling = true;
																	jumping = true;
																	cvt(v2(char.Velocity, 20));
																	djump = false;
																	botand = math.pi * 2;
																	wait(0.2);
																	sliding = false;
																	jumping = false;
																	wait(0.1);
																	rolling = false;
																elseif flying then
																	if not debounce then
																		debounce = true;
																		potand = potand + math.pi * 2 * fallvr;
																		wait(0.5);
																		debounce = false;
																	end;
																end;
															elseif flying then
																if not debounce then
																	debounce = true;
																	potand = potand + math.pi * 2 * fallvr;
																	wait(0.5);
																	debounce = false;
																end;
															end;
														elseif flying then
															if not debounce then
																debounce = true;
																potand = potand + math.pi * 2 * fallvr;
																wait(0.5);
																debounce = false;
															end;
														end;
													elseif ground then
														if not jumping then
															if ground.Name ~= "Slide" then
																psound(vis.torso, "jump2");
																rolling = true;
																jumping = true;
																cvt(v2(char.Velocity, 20));
																djump = false;
																botand = math.pi * 2;
																wait(0.2);
																sliding = false;
																jumping = false;
																wait(0.1);
																rolling = false;
															elseif flying then
																if not debounce then
																	debounce = true;
																	potand = potand + math.pi * 2 * fallvr;
																	wait(0.5);
																	debounce = false;
																end;
															end;
														elseif flying then
															if not debounce then
																debounce = true;
																potand = potand + math.pi * 2 * fallvr;
																wait(0.5);
																debounce = false;
															end;
														end;
													elseif flying then
														if not debounce then
															debounce = true;
															potand = potand + math.pi * 2 * fallvr;
															wait(0.5);
															debounce = false;
														end;
													end;
												elseif ground then
													if not jumping then
														if ground.Name ~= "Slide" then
															psound(vis.torso, "jump2");
															rolling = true;
															jumping = true;
															cvt(v2(char.Velocity, 20));
															djump = false;
															botand = math.pi * 2;
															wait(0.2);
															sliding = false;
															jumping = false;
															wait(0.1);
															rolling = false;
														elseif flying then
															if not debounce then
																debounce = true;
																potand = potand + math.pi * 2 * fallvr;
																wait(0.5);
																debounce = false;
															end;
														end;
													elseif flying then
														if not debounce then
															debounce = true;
															potand = potand + math.pi * 2 * fallvr;
															wait(0.5);
															debounce = false;
														end;
													end;
												elseif flying then
													if not debounce then
														debounce = true;
														potand = potand + math.pi * 2 * fallvr;
														wait(0.5);
														debounce = false;
													end;
												end;
											elseif ground then
												if not jumping then
													if ground.Name ~= "Slide" then
														psound(vis.torso, "jump2");
														rolling = true;
														jumping = true;
														cvt(v2(char.Velocity, 20));
														djump = false;
														botand = math.pi * 2;
														wait(0.2);
														sliding = false;
														jumping = false;
														wait(0.1);
														rolling = false;
													elseif flying then
														if not debounce then
															debounce = true;
															potand = potand + math.pi * 2 * fallvr;
															wait(0.5);
															debounce = false;
														end;
													end;
												elseif flying then
													if not debounce then
														debounce = true;
														potand = potand + math.pi * 2 * fallvr;
														wait(0.5);
														debounce = false;
													end;
												end;
											elseif flying then
												if not debounce then
													debounce = true;
													potand = potand + math.pi * 2 * fallvr;
													wait(0.5);
													debounce = false;
												end;
											end;
										elseif ground then
											if not jumping then
												if ground.Name ~= "Slide" then
													psound(vis.torso, "jump2");
													rolling = true;
													jumping = true;
													cvt(v2(char.Velocity, 20));
													djump = false;
													botand = math.pi * 2;
													wait(0.2);
													sliding = false;
													jumping = false;
													wait(0.1);
													rolling = false;
												elseif flying then
													if not debounce then
														debounce = true;
														potand = potand + math.pi * 2 * fallvr;
														wait(0.5);
														debounce = false;
													end;
												end;
											elseif flying then
												if not debounce then
													debounce = true;
													potand = potand + math.pi * 2 * fallvr;
													wait(0.5);
													debounce = false;
												end;
											end;
										elseif flying then
											if not debounce then
												debounce = true;
												potand = potand + math.pi * 2 * fallvr;
												wait(0.5);
												debounce = false;
											end;
										end;
									elseif ground then
										if not jumping then
											if ground.Name ~= "Slide" then
												psound(vis.torso, "jump2");
												rolling = true;
												jumping = true;
												cvt(v2(char.Velocity, 20));
												djump = false;
												botand = math.pi * 2;
												wait(0.2);
												sliding = false;
												jumping = false;
												wait(0.1);
												rolling = false;
											elseif flying then
												if not debounce then
													debounce = true;
													potand = potand + math.pi * 2 * fallvr;
													wait(0.5);
													debounce = false;
												end;
											end;
										elseif flying then
											if not debounce then
												debounce = true;
												potand = potand + math.pi * 2 * fallvr;
												wait(0.5);
												debounce = false;
											end;
										end;
									elseif flying then
										if not debounce then
											debounce = true;
											potand = potand + math.pi * 2 * fallvr;
											wait(0.5);
											debounce = false;
										end;
									end;
								elseif ground then
									if not jumping then
										if ground.Name ~= "Slide" then
											psound(vis.torso, "jump2");
											rolling = true;
											jumping = true;
											cvt(v2(char.Velocity, 20));
											djump = false;
											botand = math.pi * 2;
											wait(0.2);
											sliding = false;
											jumping = false;
											wait(0.1);
											rolling = false;
										elseif flying then
											if not debounce then
												debounce = true;
												potand = potand + math.pi * 2 * fallvr;
												wait(0.5);
												debounce = false;
											end;
										end;
									elseif flying then
										if not debounce then
											debounce = true;
											potand = potand + math.pi * 2 * fallvr;
											wait(0.5);
											debounce = false;
										end;
									end;
								elseif flying then
									if not debounce then
										debounce = true;
										potand = potand + math.pi * 2 * fallvr;
										wait(0.5);
										debounce = false;
									end;
								end;
							elseif hasflame then
								flameon = not flameon;
							elseif ledgegrab then
								if not debounce then
									psound(vis.torso, "jump2");
									debounce = true;
									jumping = true;
									wallrun = nil;
									ledgegrab = nil;
									cvt(Vector3.new(0, 30, 0) + point.rightVector * 10);
									rotand = rotand + 1;
									wait(0.2);
									cvt(Vector3.new(0, char.Velocity.Y, 0) - wallnorm * 10 - point.rightVector * 7);
									wait(0.2);
									djump = false;
									debounce = false;
									jumping = false;
								elseif wallrun then
									if not jumping then
										skatestat = { "Wall jump", skatestat[2] + 100, skatestat[3] + 1, false, skatestat[5] };
										psound(vis.torso, "jump2");
										jumping = true;
										cvt(v2(char.Velocity, 30) + wallnorm * 30);
										point = CFrame.new(Vector3.new(), -2 * point.lookVector:Dot(wallnorm) * wallnorm + point.lookVector);
										djump = true;
										wait(0.2);
										jumping = false;
									end;
								elseif swimming then
									return;
								elseif not sliding then
									if not pole then
										if not onrope then
											if not wallrun then
												if not ledgegrab then
													if not attack then
														if not pound then
															psound(vis.torso, "dive");
															longjump = false;
															pound = false;
															rolling = false;
															char.Anchored = false;
															jumping = true;
															sliding = true;
															if hasfly then
																if not djump then
																	djump = true;
																	flying = true;
																	flypitch = 0.5;
																	flyspeed = 2;
																	if ground then
																		v98 = 40;
																	else
																		v98 = 20;
																	end;
																	cvt(point.lookVector * 50 + Vector3.new(0, v98));
																	potand = math.pi * 2 * fallvr;
																else
																	if ground then
																		v99 = 30;
																	else
																		v99 = 20;
																	end;
																	cvt(point.lookVector * 40 + Vector3.new(0, v99));
																end;
															else
																if ground then
																	v99 = 30;
																else
																	v99 = 20;
																end;
																cvt(point.lookVector * 40 + Vector3.new(0, v99));
															end;
															wait(0.3);
															jumping = false;
														elseif ground then
															if not jumping then
																if ground.Name ~= "Slide" then
																	psound(vis.torso, "jump2");
																	rolling = true;
																	jumping = true;
																	cvt(v2(char.Velocity, 20));
																	djump = false;
																	botand = math.pi * 2;
																	wait(0.2);
																	sliding = false;
																	jumping = false;
																	wait(0.1);
																	rolling = false;
																elseif flying then
																	if not debounce then
																		debounce = true;
																		potand = potand + math.pi * 2 * fallvr;
																		wait(0.5);
																		debounce = false;
																	end;
																end;
															elseif flying then
																if not debounce then
																	debounce = true;
																	potand = potand + math.pi * 2 * fallvr;
																	wait(0.5);
																	debounce = false;
																end;
															end;
														elseif flying then
															if not debounce then
																debounce = true;
																potand = potand + math.pi * 2 * fallvr;
																wait(0.5);
																debounce = false;
															end;
														end;
													elseif ground then
														if not jumping then
															if ground.Name ~= "Slide" then
																psound(vis.torso, "jump2");
																rolling = true;
																jumping = true;
																cvt(v2(char.Velocity, 20));
																djump = false;
																botand = math.pi * 2;
																wait(0.2);
																sliding = false;
																jumping = false;
																wait(0.1);
																rolling = false;
															elseif flying then
																if not debounce then
																	debounce = true;
																	potand = potand + math.pi * 2 * fallvr;
																	wait(0.5);
																	debounce = false;
																end;
															end;
														elseif flying then
															if not debounce then
																debounce = true;
																potand = potand + math.pi * 2 * fallvr;
																wait(0.5);
																debounce = false;
															end;
														end;
													elseif flying then
														if not debounce then
															debounce = true;
															potand = potand + math.pi * 2 * fallvr;
															wait(0.5);
															debounce = false;
														end;
													end;
												elseif ground then
													if not jumping then
														if ground.Name ~= "Slide" then
															psound(vis.torso, "jump2");
															rolling = true;
															jumping = true;
															cvt(v2(char.Velocity, 20));
															djump = false;
															botand = math.pi * 2;
															wait(0.2);
															sliding = false;
															jumping = false;
															wait(0.1);
															rolling = false;
														elseif flying then
															if not debounce then
																debounce = true;
																potand = potand + math.pi * 2 * fallvr;
																wait(0.5);
																debounce = false;
															end;
														end;
													elseif flying then
														if not debounce then
															debounce = true;
															potand = potand + math.pi * 2 * fallvr;
															wait(0.5);
															debounce = false;
														end;
													end;
												elseif flying then
													if not debounce then
														debounce = true;
														potand = potand + math.pi * 2 * fallvr;
														wait(0.5);
														debounce = false;
													end;
												end;
											elseif ground then
												if not jumping then
													if ground.Name ~= "Slide" then
														psound(vis.torso, "jump2");
														rolling = true;
														jumping = true;
														cvt(v2(char.Velocity, 20));
														djump = false;
														botand = math.pi * 2;
														wait(0.2);
														sliding = false;
														jumping = false;
														wait(0.1);
														rolling = false;
													elseif flying then
														if not debounce then
															debounce = true;
															potand = potand + math.pi * 2 * fallvr;
															wait(0.5);
															debounce = false;
														end;
													end;
												elseif flying then
													if not debounce then
														debounce = true;
														potand = potand + math.pi * 2 * fallvr;
														wait(0.5);
														debounce = false;
													end;
												end;
											elseif flying then
												if not debounce then
													debounce = true;
													potand = potand + math.pi * 2 * fallvr;
													wait(0.5);
													debounce = false;
												end;
											end;
										elseif ground then
											if not jumping then
												if ground.Name ~= "Slide" then
													psound(vis.torso, "jump2");
													rolling = true;
													jumping = true;
													cvt(v2(char.Velocity, 20));
													djump = false;
													botand = math.pi * 2;
													wait(0.2);
													sliding = false;
													jumping = false;
													wait(0.1);
													rolling = false;
												elseif flying then
													if not debounce then
														debounce = true;
														potand = potand + math.pi * 2 * fallvr;
														wait(0.5);
														debounce = false;
													end;
												end;
											elseif flying then
												if not debounce then
													debounce = true;
													potand = potand + math.pi * 2 * fallvr;
													wait(0.5);
													debounce = false;
												end;
											end;
										elseif flying then
											if not debounce then
												debounce = true;
												potand = potand + math.pi * 2 * fallvr;
												wait(0.5);
												debounce = false;
											end;
										end;
									elseif ground then
										if not jumping then
											if ground.Name ~= "Slide" then
												psound(vis.torso, "jump2");
												rolling = true;
												jumping = true;
												cvt(v2(char.Velocity, 20));
												djump = false;
												botand = math.pi * 2;
												wait(0.2);
												sliding = false;
												jumping = false;
												wait(0.1);
												rolling = false;
											elseif flying then
												if not debounce then
													debounce = true;
													potand = potand + math.pi * 2 * fallvr;
													wait(0.5);
													debounce = false;
												end;
											end;
										elseif flying then
											if not debounce then
												debounce = true;
												potand = potand + math.pi * 2 * fallvr;
												wait(0.5);
												debounce = false;
											end;
										end;
									elseif flying then
										if not debounce then
											debounce = true;
											potand = potand + math.pi * 2 * fallvr;
											wait(0.5);
											debounce = false;
										end;
									end;
								elseif ground then
									if not jumping then
										if ground.Name ~= "Slide" then
											psound(vis.torso, "jump2");
											rolling = true;
											jumping = true;
											cvt(v2(char.Velocity, 20));
											djump = false;
											botand = math.pi * 2;
											wait(0.2);
											sliding = false;
											jumping = false;
											wait(0.1);
											rolling = false;
										elseif flying then
											if not debounce then
												debounce = true;
												potand = potand + math.pi * 2 * fallvr;
												wait(0.5);
												debounce = false;
											end;
										end;
									elseif flying then
										if not debounce then
											debounce = true;
											potand = potand + math.pi * 2 * fallvr;
											wait(0.5);
											debounce = false;
										end;
									end;
								elseif flying then
									if not debounce then
										debounce = true;
										potand = potand + math.pi * 2 * fallvr;
										wait(0.5);
										debounce = false;
									end;
								end;
							elseif wallrun then
								if not jumping then
									skatestat = { "Wall jump", skatestat[2] + 100, skatestat[3] + 1, false, skatestat[5] };
									psound(vis.torso, "jump2");
									jumping = true;
									cvt(v2(char.Velocity, 30) + wallnorm * 30);
									point = CFrame.new(Vector3.new(), -2 * point.lookVector:Dot(wallnorm) * wallnorm + point.lookVector);
									djump = true;
									wait(0.2);
									jumping = false;
								end;
							elseif swimming then
								return;
							elseif not sliding then
								if not pole then
									if not onrope then
										if not wallrun then
											if not ledgegrab then
												if not attack then
													if not pound then
														psound(vis.torso, "dive");
														longjump = false;
														pound = false;
														rolling = false;
														char.Anchored = false;
														jumping = true;
														sliding = true;
														if hasfly then
															if not djump then
																djump = true;
																flying = true;
																flypitch = 0.5;
																flyspeed = 2;
																if ground then
																	v98 = 40;
																else
																	v98 = 20;
																end;
																cvt(point.lookVector * 50 + Vector3.new(0, v98));
																potand = math.pi * 2 * fallvr;
															else
																if ground then
																	v99 = 30;
																else
																	v99 = 20;
																end;
																cvt(point.lookVector * 40 + Vector3.new(0, v99));
															end;
														else
															if ground then
																v99 = 30;
															else
																v99 = 20;
															end;
															cvt(point.lookVector * 40 + Vector3.new(0, v99));
														end;
														wait(0.3);
														jumping = false;
													elseif ground then
														if not jumping then
															if ground.Name ~= "Slide" then
																psound(vis.torso, "jump2");
																rolling = true;
																jumping = true;
																cvt(v2(char.Velocity, 20));
																djump = false;
																botand = math.pi * 2;
																wait(0.2);
																sliding = false;
																jumping = false;
																wait(0.1);
																rolling = false;
															elseif flying then
																if not debounce then
																	debounce = true;
																	potand = potand + math.pi * 2 * fallvr;
																	wait(0.5);
																	debounce = false;
																end;
															end;
														elseif flying then
															if not debounce then
																debounce = true;
																potand = potand + math.pi * 2 * fallvr;
																wait(0.5);
																debounce = false;
															end;
														end;
													elseif flying then
														if not debounce then
															debounce = true;
															potand = potand + math.pi * 2 * fallvr;
															wait(0.5);
															debounce = false;
														end;
													end;
												elseif ground then
													if not jumping then
														if ground.Name ~= "Slide" then
															psound(vis.torso, "jump2");
															rolling = true;
															jumping = true;
															cvt(v2(char.Velocity, 20));
															djump = false;
															botand = math.pi * 2;
															wait(0.2);
															sliding = false;
															jumping = false;
															wait(0.1);
															rolling = false;
														elseif flying then
															if not debounce then
																debounce = true;
																potand = potand + math.pi * 2 * fallvr;
																wait(0.5);
																debounce = false;
															end;
														end;
													elseif flying then
														if not debounce then
															debounce = true;
															potand = potand + math.pi * 2 * fallvr;
															wait(0.5);
															debounce = false;
														end;
													end;
												elseif flying then
													if not debounce then
														debounce = true;
														potand = potand + math.pi * 2 * fallvr;
														wait(0.5);
														debounce = false;
													end;
												end;
											elseif ground then
												if not jumping then
													if ground.Name ~= "Slide" then
														psound(vis.torso, "jump2");
														rolling = true;
														jumping = true;
														cvt(v2(char.Velocity, 20));
														djump = false;
														botand = math.pi * 2;
														wait(0.2);
														sliding = false;
														jumping = false;
														wait(0.1);
														rolling = false;
													elseif flying then
														if not debounce then
															debounce = true;
															potand = potand + math.pi * 2 * fallvr;
															wait(0.5);
															debounce = false;
														end;
													end;
												elseif flying then
													if not debounce then
														debounce = true;
														potand = potand + math.pi * 2 * fallvr;
														wait(0.5);
														debounce = false;
													end;
												end;
											elseif flying then
												if not debounce then
													debounce = true;
													potand = potand + math.pi * 2 * fallvr;
													wait(0.5);
													debounce = false;
												end;
											end;
										elseif ground then
											if not jumping then
												if ground.Name ~= "Slide" then
													psound(vis.torso, "jump2");
													rolling = true;
													jumping = true;
													cvt(v2(char.Velocity, 20));
													djump = false;
													botand = math.pi * 2;
													wait(0.2);
													sliding = false;
													jumping = false;
													wait(0.1);
													rolling = false;
												elseif flying then
													if not debounce then
														debounce = true;
														potand = potand + math.pi * 2 * fallvr;
														wait(0.5);
														debounce = false;
													end;
												end;
											elseif flying then
												if not debounce then
													debounce = true;
													potand = potand + math.pi * 2 * fallvr;
													wait(0.5);
													debounce = false;
												end;
											end;
										elseif flying then
											if not debounce then
												debounce = true;
												potand = potand + math.pi * 2 * fallvr;
												wait(0.5);
												debounce = false;
											end;
										end;
									elseif ground then
										if not jumping then
											if ground.Name ~= "Slide" then
												psound(vis.torso, "jump2");
												rolling = true;
												jumping = true;
												cvt(v2(char.Velocity, 20));
												djump = false;
												botand = math.pi * 2;
												wait(0.2);
												sliding = false;
												jumping = false;
												wait(0.1);
												rolling = false;
											elseif flying then
												if not debounce then
													debounce = true;
													potand = potand + math.pi * 2 * fallvr;
													wait(0.5);
													debounce = false;
												end;
											end;
										elseif flying then
											if not debounce then
												debounce = true;
												potand = potand + math.pi * 2 * fallvr;
												wait(0.5);
												debounce = false;
											end;
										end;
									elseif flying then
										if not debounce then
											debounce = true;
											potand = potand + math.pi * 2 * fallvr;
											wait(0.5);
											debounce = false;
										end;
									end;
								elseif ground then
									if not jumping then
										if ground.Name ~= "Slide" then
											psound(vis.torso, "jump2");
											rolling = true;
											jumping = true;
											cvt(v2(char.Velocity, 20));
											djump = false;
											botand = math.pi * 2;
											wait(0.2);
											sliding = false;
											jumping = false;
											wait(0.1);
											rolling = false;
										elseif flying then
											if not debounce then
												debounce = true;
												potand = potand + math.pi * 2 * fallvr;
												wait(0.5);
												debounce = false;
											end;
										end;
									elseif flying then
										if not debounce then
											debounce = true;
											potand = potand + math.pi * 2 * fallvr;
											wait(0.5);
											debounce = false;
										end;
									end;
								elseif flying then
									if not debounce then
										debounce = true;
										potand = potand + math.pi * 2 * fallvr;
										wait(0.5);
										debounce = false;
									end;
								end;
							elseif ground then
								if not jumping then
									if ground.Name ~= "Slide" then
										psound(vis.torso, "jump2");
										rolling = true;
										jumping = true;
										cvt(v2(char.Velocity, 20));
										djump = false;
										botand = math.pi * 2;
										wait(0.2);
										sliding = false;
										jumping = false;
										wait(0.1);
										rolling = false;
									elseif flying then
										if not debounce then
											debounce = true;
											potand = potand + math.pi * 2 * fallvr;
											wait(0.5);
											debounce = false;
										end;
									end;
								elseif flying then
									if not debounce then
										debounce = true;
										potand = potand + math.pi * 2 * fallvr;
										wait(0.5);
										debounce = false;
									end;
								end;
							elseif flying then
								if not debounce then
									debounce = true;
									potand = potand + math.pi * 2 * fallvr;
									wait(0.5);
									debounce = false;
								end;
							end;
						end;
					end;
				end;
			end;
		end;
	end;
	if paused then
		if UI.pause.bg.pause.Visible then
			if map.Name ~= "Boss" then
				if map.Name ~= "MAKE" then
					UI.UI.Visible = true;
					UI.pause.Visible = true;
					textsel = UI.pause.bg.pause.close;
					game.StarterGui:SetCore("TopbarEnabled", true);
					UI.skip.Visible = false;
					MouseBehavior = Enum.MouseBehavior.Default;
				end;
			end;
		end;
	end;
end;
