/*
// Namespace:
public class LoseMoves : AbstractLoseCondition // TypeDefIndex: 11611
{
	// Fields
	[SerializeField] // RVA: 0x18B2BC Offset: 0x18B2BC VA: 0x10018B2BC
	private int startMoves; // 0x34
	[SerializeField] // RVA: 0x18B2CC Offset: 0x18B2CC VA: 0x10018B2CC
	private int remainingMoves; // 0x38
	[SerializeField] // RVA: 0x18B2DC Offset: 0x18B2DC VA: 0x10018B2DC
	private int offerMoves; // 0x3C
	protected bool won; // 0x40

	// Methods

	// RVA: 0x1A5B620 Offset: 0x1A5B620 VA: 0x101A5B620
	public int get_StartMoves() { }

	// RVA: 0x1A5B628 Offset: 0x1A5B628 VA: 0x101A5B628
	public void set_StartMoves(int value) { }

	// RVA: 0x1A5B630 Offset: 0x1A5B630 VA: 0x101A5B630
	public int get_RemainingMoves() { }

	// RVA: 0x1A5B638 Offset: 0x1A5B638 VA: 0x101A5B638
	public void set_RemainingMoves(int value) { }

	// RVA: 0x1A5B640 Offset: 0x1A5B640 VA: 0x101A5B640 Slot: 6
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
    if (![shortVersionString isEqualToString:@"9.9.0"]) {
        return;
    }

    intptr_t slide = _dyld_get_image_vmaddr_slide(0);
    MSHookFunction((void *)(slide + 0x101A5B640), (void *)new_LoseMoves__InitComponent, (void **)&LoseMoves__InitComponent);
}
