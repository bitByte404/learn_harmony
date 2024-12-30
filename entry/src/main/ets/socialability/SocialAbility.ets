import { AbilityConstant, UIAbility, Want } from '@kit.AbilityKit';
import { hilog } from '@kit.PerformanceAnalysisKit';
import { window } from '@kit.ArkUI';

interface IObj {
  name: string
  age: number
  desc: string
  money: number
}

export default class SocialAbility extends UIAbility {
  onCreate(want: Want, launchParam: AbilityConstant.LaunchParam): void {
    // console.log(JSON.stringify(want.parameters))
    // let obj = want.parameters as Record<'name' | 'desc', string>
    // 获取want携带的参数需要转换成Record类型
    let wantObj = want.parameters as Record<'obj', IObj>
    console.log('打印结果', wantObj.obj.name, wantObj.obj.age)
    hilog.info(0x0000, 'social', '%{public}s', 'Ability onCreate');
  }

  onDestroy(): void {
    hilog.info(0x0000, 'social', '%{public}s', 'Ability onDestroy');
  }

  onWindowStageCreate(windowStage: window.WindowStage): void {
    // Main window is created, set main page for this ability
    hilog.info(0x0000, 'social', '%{public}s', 'Ability onWindowStageCreate');

    windowStage.loadContent('pages/33_module/SocialPage', (err) => {
      if (err.code) {
        hilog.error(0x0000, 'social', 'Failed to load the content. Cause: %{public}s', JSON.stringify(err) ?? '');
        return;
      }
      hilog.info(0x0000, 'social', 'Succeeded in loading the content.');
    });
  }

  onWindowStageDestroy(): void {
    // Main window is destroyed, release UI related resources
    hilog.info(0x0000, 'social', '%{public}s', 'Ability onWindowStageDestroy');
  }

  onForeground(): void {
    // Ability has brought to foreground
    hilog.info(0x0000, 'social', '%{public}s', 'Ability onForeground');
  }

  onBackground(): void {
    // Ability has back to background
    hilog.info(0x0000, 'social', '%{public}s', 'Ability onBackground');
  }
}
