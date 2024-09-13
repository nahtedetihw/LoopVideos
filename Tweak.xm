%hook ISWrappedAVPlayer
- (BOOL)loopingEnabled {
return YES;
}

- (void)setLoopingEnabled:(BOOL)arg1 {
%orig(YES);
}
%end