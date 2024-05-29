--credit to xbotistaken for the analysis

lp = game.Players.LocalPlayer;
ms = lp:GetMouse();
rf = game:GetService("ReplicatedFirst");
char = rf.char:Clone();
vis = rf.vis:Clone();
typing = false;
playing = true;
_G.loading = true;
UI = lp:WaitForChild("PlayerGui"):WaitForChild("UI");
UI:WaitForChild("loop").Visible = true;
uis = game:GetService("UserInputService");
game.StarterGui:SetCoreGuiEnabled("Backpack", false);
game.StarterGui:SetCoreGuiEnabled("Health", false);
uis.MouseIconEnabled = false;
local u1 = 1;
uis.InputBegan:connect(function(pressed_key, p2)
	if not typing then
		if pressed_key.UserInputType == Enum.UserInputType.MouseButton1 then
			toattack()
		end
		pressed_key = pressed_key.KeyCode.Name;
		if pressed_key == "W" then w = 1;
		elseif pressed_key == "A" then a = 1;
		elseif pressed_key == "S" then s = 1;
		elseif pressed_key == "D" then d = 1;
		elseif pressed_key == "Up" then dUP = 1;
		elseif pressed_key == "Down" then dDN = 1;
		elseif pressed_key == "Left" then dLF = 1;
		elseif pressed_key == "Right" then dRT = 1;
		elseif mobile then if pressed_key.UserInputType == Enum.UserInputType.Touch then mtouch = true end
		elseif pressed_key == "ButtonA" or pressed_key == "Space" then
			if istitle then istitle = false; return;
			elseif talkto then carry(neargrab, not hold); return;
			elseif paused and textsel then textbuttons[textsel.Name](); return;
			elseif not paused and hold and hold.Name == "plug" and hold:FindFirstChild("autograb") then carry(neargrab, not hold); return;
			else jump(); return; end;
		elseif pressed_key == "ButtonX" or pressed_key == "E" then dive();
		elseif pressed_key == "ButtonB" or pressed_key == "RightShift" --[[or pressed_key.UserInputType.Name == "MouseButton1"]] and not mobile and not p2 and not istitle then toattack();
		elseif pressed_key == "ButtonR2" or pressed_key == "LeftShift" then tocrouch();
		elseif map then
			if map.Name == "MAKE" and pressed_key == "ButtonR1" or pressed_key == "ButtonL1" then
				if pressed_key == "ButtonR1" then make.mode = UI.MAKE[make.mode].NextSelectionRight.Name; return;
				else make.mode = UI.MAKE[make.mode].NextSelectionLeft.Name; return; end;
			end;
			if pressed_key == "ButtonR1" or pressed_key == "ButtonL1" or pressed_key == "Q"  or pressed_key.UserInputType == Enum.UserInputType.MouseButton3 then
				if point then snapcam = snapcam + 1; snapto = -(point.lookVector:Dot(camcf.lookVector) < -0.9 and point * CFrame.Angles(0, 0.1, 0) or point).rightVector; return; end;
			else
				if (pressed_key == "Return" or pressed_key == "ButtonL2") and candab then dab = 1; return; end;
				if pressed_key == "DPadUp" then z1 = 1;
					if zoom == 0.5 then firstperson = true; return; end;
				else
					if pressed_key == "DPadDown" then z2 = 1; firstperson = false; return; end;
					if (pressed_key == "ButtonSelect" or pressed_key == "P" or pressed_key == "Backquote") and map and map.Name ~= "MAKE" then pause(not paused, nil, true); return; end;
					if pressed_key == "DPadLeft" or pressed_key == "LeftControl" then todance(); return; end;
					if pressed_key == "ButtonY" then
						pause(not paused, nil, true);
						UI.pause.bg.Visible = false;
						UI.pause.bg2.Visible = paused;
						textsel = UI.pause.bg2.token;
						return;
					end;
					local v1
					local v2
					if pressed_key == "F" and map and map.Name ~= "MAKE" then pause(not paused, nil, nil, true); return; end;
					if pressed_key == "R" and map.Name == "not MAKE" then
						health = 4;
						dmgtick = gtick - 5;
						char.CFrame = map.spawn.CFrame;
						char.Velocity = Vector3.new();
						point = CFrame.new();
					end;
				end;
			end;
		elseif pressed_key == "ButtonL1" then
			if pressed_key == "ButtonR1" then make.mode = UI.MAKE[make.mode].NextSelectionRight.Name; return;
			else make.mode = UI.MAKE[make.mode].NextSelectionLeft.Name; return; end;
		end;
	end;
end);
local u2 = 1;
uis.InputEnded:connect(function(released_key)
	if mobile then if released_key.UserInputType == Enum.UserInputType.Touch then mtouch = false end
		if UI.AbsoluteSize.X / 2 < ms.X then
			tojump = 0;
			todive = 0;
			fcrouch = false;
			UI.mobile.A.ImageRectOffset = Vector2.new(0, 256);
			UI.mobile.A.B.ImageRectOffset = Vector2.new(0, 0);
			UI.mobile.A.X.ImageRectOffset = Vector2.new(0, 0);
			UI.mobile.A.RT.ImageRectOffset = Vector2.new(0, 256);
			return;
		else
			st1 = Vector3.new();
			UI.mobile.st1.bog.Position = UDim2.new(0.3, 0, 0.3, 0);
			return;
		end;
	end;
	released_key = released_key.KeyCode.Name;
	if released_key == "W" then w = 0;
	elseif released_key == "A" then a = 0;
	elseif released_key == "S" then s = 0;
	elseif released_key == "D" then d = 0;
	elseif released_key == "Up" then dUP = 0;
	elseif released_key == "Down" then dDN = 0;
	elseif released_key == "Left" then dLF = 0;
	elseif released_key == "Right" then dRT = 0;
	elseif released_key == "ButtonR2" or released_key == "LeftShift" then if char.Anchored and not pound and not pause then return; end;
	elseif (released_key == "Return" or released_key == "ButtonL2") and candab then dab = 0; return;
	elseif released_key == "DPadUp" then z1 = 0; return;
	elseif released_key == "DPadDown" then z2 = 0; return;
	elseif released_key == "ButtonA" or released_key == "Space" then tojump = 0; return;
		
	elseif paused then
		return;
	end;
	todive = 0;
	fcrouch = false;
end);
