classdef TestPreCornerDetect
    %TestPreCornerDetect
    properties (Constant)
        path = fileparts(fileparts(mfilename('fullpath')))
        img = rgb2gray(imread([TestPreCornerDetect.path,filesep,'img001.jpg']))
    end
    
    methods (Static)
        function test_1
            result = cv.preCornerDetect(TestPreCornerDetect.img);
        end
        
        function test_error_1
            try
                cv.preCornerDetect();
                throw('UnitTest:Fail');
            catch e
                assert(strcmp(e.identifier,'mexopencv:error'));
            end
        end
    end
    
end

