/*
// Namespace:
public class LoseMoves : AbstractLoseCondition // TypeDefIndex: 11609
{
	// Fields
	[SerializeField] // RVA: 0x189AB8 Offset: 0x189AB8 VA: 0x100189AB8
	private int startMoves; // 0x34
	[SerializeField] // RVA: 0x189AC8 Offset: 0x189AC8 VA: 0x100189AC8
	private int remainingMoves; // 0x38
	[SerializeField] // RVA: 0x189AD8 Offset: 0x189AD8 VA: 0x100189AD8
	private int offerMoves; // 0x3C
	protected bool won; // 0x40

	// Methods

	// RVA: 0x19D68C4 Offset: 0x19D68C4 VA: 0x1019D68C4
	public int get_StartMoves() { }

	// RVA: 0x19D68CC Offset: 0x19D68CC VA: 0x1019D68CC
	public void set_StartMoves(int value) { }

	// RVA: 0x19D68D4 Offset: 0x19D68D4 VA: 0x1019D68D4
	public int get_RemainingMoves() { }

	// RVA: 0x19D68DC Offset: 0x19D68DC VA: 0x1019D68DC
	public void set_RemainingMoves(int value) { }

	// RVA: 0x19D68E4 Offset: 0x19D68E4 VA: 0x1019D68E4 Slot: 6
	public override void InitComponent() { }
}
*/

#include <mach-o/dyld.h>
#include <substrate.h>
#import <Foundation/Foundation.h>

void (*LoseMoves__InitComponent) (void* __this, const void* method);
void new_LoseMoves__InitComponent (void* __this, const void* method) {
    LoseMoves__InitComponent(__this, method);
    *(int32_t *)(__this + 0x34) += 100; // startMoves
    *(int32_t *)(__this + 0x38) += 100; // remainingMoves
}


%ctor {
    NSString *shortVersionString = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
    if (![shortVersionString isEqualToString:@"9.7.1"]) {
        return;
    }

    intptr_t slide = _dyld_get_image_vmaddr_slide(0);
    MSHookFunction((void *)(slide + 0x1019D68E4), (void *)new_LoseMoves__InitComponent, (void **)&LoseMoves__InitComponent);
}
