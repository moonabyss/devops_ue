// My game copyright

#pragma once

#include "<Path>/Tests/Utils/InputRecordingUtils.h"
#include "CoreMinimal.h"

namespace Moonabyss
{
namespace Test
{

class JsonUtils
{
public:
    static bool WriteInputData(const FString& FileName, const FInputData& InputData);
    static bool ReadInputData(const FString& FileName, FInputData& InputData);
};

}  // namespace Test
}  // namespace Moonabyss
