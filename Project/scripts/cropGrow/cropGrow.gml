/// @description increment crop day and growth cycle

if (growthStage < maxGrowthStage)
{
	daysOld++;
				
	// First growth will automatically put plant into next growth stage
	var firstGrowth = 0;
	if (daysOld > 0) { firstGrowth = 1; }
				
	growthStage = firstGrowth + (daysOld div growthStageDuration);
} else
{
	growthStage = maxGrowthStage;
	fullyGrown = true;
	alarm[1] = 1;
}
			
// Fixing a bug that causes plant to go over growth stage - should find a diff solution later
if (growthStage > maxGrowthStage) { growthStage = maxGrowthStage; }