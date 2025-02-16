-- Converter Version: 0.99
-- Feature Catalogue Version: 1.0.0 (2019/4/9)

-- Building main entry point.
function Building(feature, featurePortrayal, contextParameters)
	if feature.PrimitiveType == PrimitiveType.Point and contextParameters.SimplifiedPoints then
		if contains(33, feature['function']) and feature.visuallyConspicuous == 1 and feature.featureName[1] and feature.featureName[1].name then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:22220;DrawingPriority:18;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:22220;DrawingPriority:18;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:POSGEN03')
			if feature.featureName[1] and feature.featureName[1].name then
				featurePortrayal:AddInstructions('LocalOffset:3.51,0;TextAlignVertical:Center;FontSize:10;TextInstruction:' .. EncodeString(GetFeatureName(feature, contextParameters)) .. ',26,24')
			end
		elseif contains(20, feature['function']) and feature.visuallyConspicuous == 1 then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:22220;DrawingPriority:18;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:22220;DrawingPriority:18;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:BUIREL13')
		elseif contains(21, feature['function']) and feature.visuallyConspicuous == 1 then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:22220;DrawingPriority:18;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:22220;DrawingPriority:18;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:BUIREL13')
		elseif contains(22, feature['function']) and feature.visuallyConspicuous == 1 then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:22220;DrawingPriority:18;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:22220;DrawingPriority:18;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:BUIREL14')
		elseif contains(23, feature['function']) and feature.visuallyConspicuous == 1 then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:22220;DrawingPriority:18;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:22220;DrawingPriority:18;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:BUIREL14')
		elseif contains(24, feature['function']) and feature.visuallyConspicuous == 1 then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:22220;DrawingPriority:18;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:22220;DrawingPriority:18;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:BUIREL14')
		elseif contains(25, feature['function']) and feature.visuallyConspicuous == 1 then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:22220;DrawingPriority:18;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:22220;DrawingPriority:18;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:BUIREL14')
		elseif contains(26, feature['function']) and feature.visuallyConspicuous == 1 then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:22220;DrawingPriority:18;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:22220;DrawingPriority:18;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:BUIREL15')
		elseif contains(27, feature['function']) and feature.visuallyConspicuous == 1 then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:22220;DrawingPriority:18;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:22220;DrawingPriority:18;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:BUIREL15')
		elseif contains(33, feature['function']) and feature.visuallyConspicuous == 1 then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:22220;DrawingPriority:18;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:22220;DrawingPriority:18;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:POSGEN03')
		elseif contains(35, feature['function']) and feature.visuallyConspicuous == 1 then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:22220;DrawingPriority:18;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:22220;DrawingPriority:18;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:TNKCON12')
		elseif contains(33, feature['function']) and feature.featureName[1] and feature.featureName[1].name then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:32220;DrawingPriority:12;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:32220;DrawingPriority:12;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:POSGEN03')
			if feature.featureName[1] and feature.featureName[1].name then
				featurePortrayal:AddInstructions('LocalOffset:3.51,0;TextAlignVertical:Center;FontSize:10;TextInstruction:' .. EncodeString(GetFeatureName(feature, contextParameters)) .. ',26,24')
			end
		elseif feature.visuallyConspicuous == 1 then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:22220;DrawingPriority:18;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:22220;DrawingPriority:18;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:BUISGL11')
		elseif contains(20, feature['function']) then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:32220;DrawingPriority:12;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:32220;DrawingPriority:12;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:BUIREL01')
		elseif contains(21, feature['function']) then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:32220;DrawingPriority:12;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:32220;DrawingPriority:12;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:BUIREL01')
		elseif contains(22, feature['function']) then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:32220;DrawingPriority:12;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:32220;DrawingPriority:12;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:BUIREL04')
		elseif contains(23, feature['function']) then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:32220;DrawingPriority:12;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:32220;DrawingPriority:12;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:BUIREL04')
		elseif contains(24, feature['function']) then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:32220;DrawingPriority:12;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:32220;DrawingPriority:12;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:BUIREL04')
		elseif contains(25, feature['function']) then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:32220;DrawingPriority:12;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:32220;DrawingPriority:12;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:BUIREL04')
		elseif contains(26, feature['function']) then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:32220;DrawingPriority:12;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:32220;DrawingPriority:12;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:BUIREL05')
		elseif contains(27, feature['function']) then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:32220;DrawingPriority:12;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:32220;DrawingPriority:12;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:BUIREL05')
		elseif contains(33, feature['function']) then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:32220;DrawingPriority:12;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:32220;DrawingPriority:12;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:POSGEN03')
		elseif contains(35, feature['function']) then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:32220;DrawingPriority:12;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:32220;DrawingPriority:12;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:TNKCON02')
		else
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:32220;DrawingPriority:12;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:32220;DrawingPriority:12;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:BUISGL01')
		end
	elseif feature.PrimitiveType == PrimitiveType.Point then
		if contains(33, feature['function']) and feature.visuallyConspicuous == 1 and feature.featureName[1] and feature.featureName[1].name then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:22220;DrawingPriority:18;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:22220;DrawingPriority:18;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:POSGEN03')
			if feature.featureName[1] and feature.featureName[1].name then
				featurePortrayal:AddInstructions('LocalOffset:3.51,0;TextAlignVertical:Center;FontSize:10;TextInstruction:' .. EncodeString(GetFeatureName(feature, contextParameters)) .. ',26,24')
			end
		elseif contains(20, feature['function']) and feature.visuallyConspicuous == 1 then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:22220;DrawingPriority:18;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:22220;DrawingPriority:18;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:BUIREL13')
		elseif contains(21, feature['function']) and feature.visuallyConspicuous == 1 then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:22220;DrawingPriority:18;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:22220;DrawingPriority:18;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:BUIREL13')
		elseif contains(22, feature['function']) and feature.visuallyConspicuous == 1 then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:22220;DrawingPriority:18;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:22220;DrawingPriority:18;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:BUIREL14')
		elseif contains(23, feature['function']) and feature.visuallyConspicuous == 1 then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:22220;DrawingPriority:18;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:22220;DrawingPriority:18;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:BUIREL14')
		elseif contains(24, feature['function']) and feature.visuallyConspicuous == 1 then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:22220;DrawingPriority:18;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:22220;DrawingPriority:18;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:BUIREL14')
		elseif contains(25, feature['function']) and feature.visuallyConspicuous == 1 then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:22220;DrawingPriority:18;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:22220;DrawingPriority:18;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:BUIREL14')
		elseif contains(26, feature['function']) and feature.visuallyConspicuous == 1 then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:22220;DrawingPriority:18;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:22220;DrawingPriority:18;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:BUIREL15')
		elseif contains(27, feature['function']) and feature.visuallyConspicuous == 1 then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:22220;DrawingPriority:18;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:22220;DrawingPriority:18;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:BUIREL15')
		elseif contains(33, feature['function']) and feature.visuallyConspicuous == 1 then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:22220;DrawingPriority:18;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:22220;DrawingPriority:18;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:POSGEN03')
		elseif contains(35, feature['function']) and feature.visuallyConspicuous == 1 then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:22220;DrawingPriority:18;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:22220;DrawingPriority:18;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:TNKCON12')
		elseif contains(33, feature['function']) and feature.featureName[1] and feature.featureName[1].name then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:32220;DrawingPriority:12;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:32220;DrawingPriority:12;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:POSGEN03')
			if feature.featureName[1] and feature.featureName[1].name then
				featurePortrayal:AddInstructions('LocalOffset:3.51,0;TextAlignVertical:Center;FontSize:10;TextInstruction:' .. EncodeString(GetFeatureName(feature, contextParameters)) .. ',26,24')
			end
		elseif feature.visuallyConspicuous == 1 then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:22220;DrawingPriority:18;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:22220;DrawingPriority:18;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:BUISGL11')
		elseif contains(20, feature['function']) then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:32220;DrawingPriority:12;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:32220;DrawingPriority:12;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:BUIREL01')
		elseif contains(21, feature['function']) then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:32220;DrawingPriority:12;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:32220;DrawingPriority:12;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:BUIREL01')
		elseif contains(22, feature['function']) then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:32220;DrawingPriority:12;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:32220;DrawingPriority:12;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:BUIREL04')
		elseif contains(23, feature['function']) then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:32220;DrawingPriority:12;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:32220;DrawingPriority:12;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:BUIREL04')
		elseif contains(24, feature['function']) then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:32220;DrawingPriority:12;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:32220;DrawingPriority:12;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:BUIREL04')
		elseif contains(25, feature['function']) then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:32220;DrawingPriority:12;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:32220;DrawingPriority:12;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:BUIREL04')
		elseif contains(26, feature['function']) then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:32220;DrawingPriority:12;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:32220;DrawingPriority:12;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:BUIREL05')
		elseif contains(27, feature['function']) then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:32220;DrawingPriority:12;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:32220;DrawingPriority:12;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:BUIREL05')
		elseif contains(33, feature['function']) then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:32220;DrawingPriority:12;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:32220;DrawingPriority:12;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:POSGEN03')
		elseif contains(35, feature['function']) then
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:32220;DrawingPriority:12;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:32220;DrawingPriority:12;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:TNKCON02')
		else
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:32220;DrawingPriority:12;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:32220;DrawingPriority:12;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:BUISGL01')
		end
	elseif feature.PrimitiveType == PrimitiveType.Surface and contextParameters.PlainBoundaries then
		if contains(33, feature['function']) and feature.visuallyConspicuous == 1 then
			featurePortrayal:AddInstructions('ViewingGroup:22220;DrawingPriority:12;DisplayPlane:UnderRADAR')
			featurePortrayal:AddInstructions('ColorFill:CHBRN')
			if feature.featureName[1] and feature.featureName[1].name then
				featurePortrayal:AddInstructions('LocalOffset:0,0;TextAlignHorizontal:Center;TextAlignVertical:Center;FontSize:10;TextInstruction:' .. EncodeString(GetFeatureName(feature, contextParameters)) .. ',26,24')
			end
			featurePortrayal:SimpleLineStyle('solid',0.32,'CHBLK')
			featurePortrayal:AddInstructions('LineInstruction:_simple_')
		elseif contains(33, feature['function']) then
			featurePortrayal:AddInstructions('ViewingGroup:32220;DrawingPriority:12;DisplayPlane:UnderRADAR')
			featurePortrayal:AddInstructions('ColorFill:CHBRN')
			if feature.featureName[1] and feature.featureName[1].name then
				featurePortrayal:AddInstructions('LocalOffset:0,0;TextAlignHorizontal:Center;TextAlignVertical:Center;FontSize:10;TextInstruction:' .. EncodeString(GetFeatureName(feature, contextParameters)) .. ',26,24')
			end
			featurePortrayal:SimpleLineStyle('solid',0.32,'LANDF')
			featurePortrayal:AddInstructions('LineInstruction:_simple_')
		elseif feature.visuallyConspicuous == 1 then
			featurePortrayal:AddInstructions('ViewingGroup:22220;DrawingPriority:12;DisplayPlane:UnderRADAR')
			featurePortrayal:AddInstructions('ColorFill:CHBRN')
			featurePortrayal:SimpleLineStyle('solid',0.32,'CHBLK')
			featurePortrayal:AddInstructions('LineInstruction:_simple_')
		else
			featurePortrayal:AddInstructions('ViewingGroup:32220;DrawingPriority:12;DisplayPlane:UnderRADAR')
			featurePortrayal:AddInstructions('ColorFill:CHBRN')
			featurePortrayal:SimpleLineStyle('solid',0.32,'LANDF')
			featurePortrayal:AddInstructions('LineInstruction:_simple_')
		end
	elseif feature.PrimitiveType == PrimitiveType.Surface then
		if contains(33, feature['function']) and feature.visuallyConspicuous == 1 then
			featurePortrayal:AddInstructions('ViewingGroup:22220;DrawingPriority:12;DisplayPlane:UnderRADAR')
			featurePortrayal:AddInstructions('ColorFill:CHBRN')
			if feature.featureName[1] and feature.featureName[1].name then
				featurePortrayal:AddInstructions('LocalOffset:0,0;TextAlignHorizontal:Center;TextAlignVertical:Center;FontSize:10;TextInstruction:' .. EncodeString(GetFeatureName(feature, contextParameters)) .. ',26,24')
			end
			featurePortrayal:SimpleLineStyle('solid',0.32,'CHBLK')
			featurePortrayal:AddInstructions('LineInstruction:_simple_')
		elseif contains(33, feature['function']) then
			featurePortrayal:AddInstructions('ViewingGroup:32220;DrawingPriority:12;DisplayPlane:UnderRADAR')
			featurePortrayal:AddInstructions('ColorFill:CHBRN')
			if feature.featureName[1] and feature.featureName[1].name then
				featurePortrayal:AddInstructions('LocalOffset:0,0;TextAlignHorizontal:Center;TextAlignVertical:Center;FontSize:10;TextInstruction:' .. EncodeString(GetFeatureName(feature, contextParameters)) .. ',26,24')
			end
			featurePortrayal:SimpleLineStyle('solid',0.32,'LANDF')
			featurePortrayal:AddInstructions('LineInstruction:_simple_')
		elseif feature.visuallyConspicuous == 1 then
			featurePortrayal:AddInstructions('ViewingGroup:22220;DrawingPriority:12;DisplayPlane:UnderRADAR')
			featurePortrayal:AddInstructions('ColorFill:CHBRN')
			featurePortrayal:SimpleLineStyle('solid',0.32,'CHBLK')
			featurePortrayal:AddInstructions('LineInstruction:_simple_')
		else
			featurePortrayal:AddInstructions('ViewingGroup:32220;DrawingPriority:12;DisplayPlane:UnderRADAR')
			featurePortrayal:AddInstructions('ColorFill:CHBRN')
			featurePortrayal:SimpleLineStyle('solid',0.32,'LANDF')
			featurePortrayal:AddInstructions('LineInstruction:_simple_')
		end
	else
		error('Invalid primitive type or mariner settings passed to portrayal')
	end
end
