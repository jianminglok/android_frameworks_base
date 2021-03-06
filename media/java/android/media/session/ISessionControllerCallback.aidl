/* Copyright (C) 2014 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package android.media.session;

import android.content.pm.ParceledListSlice;
import android.media.MediaMetadata;
import android.media.session.ParcelableVolumeInfo;
import android.media.session.PlaybackState;
import android.media.session.MediaSession;
import android.os.Bundle;

/**
 * @hide
 */
oneway interface ISessionControllerCallback {
    void onEvent(String event, in Bundle extras);
    void onSessionDestroyed();

    // These callbacks are for the TransportController
    void onPlaybackStateChanged(in PlaybackState state);
    void onMetadataChanged(in MediaMetadata metadata);
    void onQueueChanged(in ParceledListSlice queue);
    void onQueueTitleChanged(CharSequence title);
    void onExtrasChanged(in Bundle extras);
    void onVolumeInfoChanged(in ParcelableVolumeInfo info);
    void onPlayItemResponse(boolean success);
    void onUpdateNowPlayingEntries(in long[] playList);
    void onUpdateFolderInfoBrowsedPlayer(String stringUri);
    void onUpdateNowPlayingContentChange();
}
