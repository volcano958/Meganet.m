classdef convMCNTest < kernelTest
	% classdef convMCNTest < kernelTest
	%
	% tests some convolutions with MatConvNet. Extend to cover more cases.
    methods (TestClassSetup)
        function addKernels(testCase)
            ks    = cell(2,1);
            ks{1} = convMCN([24 14],[3 3,1,2]);
            ks{2} = convMCN([14 24],[3 3,2,2]);
            ks{3} = convMCN([16 32],[3 3,1,4],'stride',2);
            ks{4} = convMCN([16 32],[3 3,2,2],'stride',2,'precision','single');
            testCase.kernels = ks;
        end
    end
end